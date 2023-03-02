`timescale 1 ns / 1 ps

`include "defines_add.sv"

module mic1_basys3 (
	input wire CLK,

    // On-board
	//input wire  RX, 
	//output wire TX,

    input wire  BTN, // Resetn
	output wire LEDR, // LED idle
	output wire LEDG, // LED run
	
	// PMOD 2
	input wire BTN1, // Start button
	input wire BTN2, // Step button
	input wire BTN3, // Stop button
	
	output wire LED1, 
	output wire LED2, 
	output wire LED3,
	output wire LED4,
	output wire LED5,
	
	//UART
	input wire sel_uart, //Added: Input signal to switch UART's
	
	//GUI
	input wire SEL_GUI_UART,
	input wire TX_GUI,
    output wire RX_GUI,
   
    //output wire [31:0] r_data, //Added: Output signal to read mem data
    
    input wire reset_n,
    
    
    //Input VGA
    input wire RESETVGA, UPDATEVGA,
    
    //Output VGA
    output wire [3:0] oRed, oGreen, oBlue,
    output wire oHS, oVS
    
    
//    output logic [31:0] MAR,
//    output logic [31:0] MDR,
//    output logic [31:0] PC,
//    output logic [31:0] SP,
//    output logic [31:0] LV,
//    output logic [31:0] CPP,
//    output logic [31:0] TOS,
//    output logic [31:0] OPC,
//    output logic [31:0] H
    
);
    logic clk;
   
    // Register UART to MIC-RAM
    logic [31:0] reg000_addr_reg;
    logic [31:0] reg001_data_in;
    logic [31:0] reg008_data_out;
    logic [31:0] reg002_read_en;
    logic [31:0] reg003_write_en;
    
    logic [31:0] reg004_gen_purp_reg1;
    logic [31:0] reg005_gen_purp_reg2;
    logic [31:0] reg006_gen_purp_reg3;
    logic [31:0] reg007_gen_purp_reg4;
    
    logic uart_a_rx;
    logic uart_a_tx;
    
    logic TX;
    logic RX_SYNC_IN;
    
    logic [31:0] MAR;
    logic [31:0] MDR;
    logic [31:0] PC;
    logic [31:0] SP; 
    logic [31:0] LV; 
    logic [31:0] CPP;
    logic [31:0] TOS;
    logic [31:0] OPC;
    logic [31:0] H;
    logic [7:0]  MBR;   // add
    
    vio_0 vio_0(
        .clk (clk),
        .probe_in0   (MAR  ),
        .probe_in1   (MDR  ),
        .probe_in2   (PC   ),
        .probe_in3   (SP   ),
        .probe_in4   (LV   ),
        .probe_in5   (CPP  ),
        .probe_in6   (TOS  ),
        .probe_in7   (OPC  ),
        .probe_in8   (H    ),
        .probe_in9   (MBR  )    //add
        
    );
    
    ila_0 ila_0(
        .clk (clk),
        .probe0   (MAR  ),
        .probe1   (MDR  ),
        .probe2   (PC   ),
        .probe3   (SP   ),
        .probe4   (LV   ),
        .probe5   (CPP  ),
        .probe6   (TOS  ),
        .probe7   (OPC  ),
        .probe8   (H    ),
        .probe9   (MBR  )    //add
        
    );
    
    VGA_0 VGA_0(
  .iCPP       (CPP            ),
  .iClk       (CLK            ), //CLK capital is 100MHZ
  .iData      (reg008_data_out),
  .iH         (H              ),
  .iLV        (LV             ),
  .iMAR       (MAR            ),
  .iMBR       (MBR            ),
  .iMDR       (MDR            ),
  .iOPC       (OPC            ),
  .iPC        (PC             ),
  .iRst       (RESETVGA       ), //switch reset
  .iSP        (SP             ),
  .iSwUpdate  (UPDATEVGA      ), //Switch to update
  .iTOS       (TOS            ),
  .oBlue      (oBlue          ),
  .oClk25     (clk            ),
  .oGreen     (oGreen         ),
  .oHS        (oHS            ),
  .oRed       (oRed           ),
  .oVS        (oVS            )
);
    
    
    

//    clk_wiz_100_to_6MHz clk_100to6 (
//        .clk_out (clk ),
//        .clk_in  (CLK )
//    );
    
    
    logic RX_sync;
    synchronizer synchronizer1 (
        .clk    (clk    ),
        .resetn (resetn ),
        .in     (RX_SYNC_IN     ),
        .out    (RX_sync    )
    );
    
    logic BTN_N_sync;
    synchronizer synchronizer2 (
        .clk    (clk    ),
        .resetn (1 ),
        .in     (!BTN    ),

        .out    (BTN_N_sync    )
    );
    
    logic BTN1_sync;
    synchronizer synchronizer3 (
        .clk    (clk    ),
        .resetn (resetn ),
        .in     (BTN1     ),

        .out    (BTN1_sync    )
    );
    
    logic BTN2_sync;
    synchronizer synchronizer4 (
        .clk    (clk    ),
        .resetn (resetn ),
        .in     (BTN2     ),

        .out    (BTN2_sync    )
    );
    
    logic BTN3_sync;
    synchronizer synchronizer5 (
        .clk    (clk    ),
        .resetn (resetn ),
        .in     (BTN3     ),

        .out    (BTN3_sync    )
    );
    
    // Reset signal
    logic resetn;
    assign resetn = BTN_N_sync;

    // BTN1
    debouncer #(.MAX_COUNT(511)) debouncer1 (
        .resetn (resetn),
        .clk(clk),
        .in(BTN1_sync),
        .out(button_run)
    );
    
    // BTN2
    debouncer #(.MAX_COUNT(511)) debouncer2 (
        .resetn (resetn),
        .clk(clk),
        .in(BTN2_sync),
        .out(button_step)
    );
    
    edge_detection edge_detection (
        .clk(clk),
        .in(button_step),
        .out(button_step_edge)
    );
    
    // BTN3
    debouncer #(.MAX_COUNT(511)) debouncer3 (
        .resetn (resetn),
        .clk(clk),
        .in(BTN3_sync),
        .out(button_stop)
    );

    mic1_soc #(
        .STACKPOINTER_ADDRESS(`STACKPOINTER_ADDRESS),
        .LOCALVARIABLEFRAME_ADDRESS(`LOCALVARIABLEFRAME_ADDRESS),
        .CONSTANTPOOL_ADDRESS(`CONSTANTPOOL_ADDRESS),
        .MIC1_PROGRAM(`MIC1_PROGRAM),
        .MIC1_MICROCODE(`MIC1_MICROCODE),
        .MEMORY_SIZE(`MEMORY_SIZE)
    ) mic1_soc (
        .clk          (clk     ),
		.resetn       (resetn  ),
		.run          (mic1_run),
        .sel_uart     (sel_uart),
        .w_adress     (reg000_addr_reg),
        .w_data       (reg001_data_in ),
        .w_en         (reg003_write_en),
        .r_en         (reg002_read_en ),
		
		.ser_tx       (TX       ),
		.ser_rx       (RX_sync  ),
		
		.r_data       (reg008_data_out),
		.MAR          (MAR  ),
        .MDR          (MDR  ),
        .PC           (PC   ),
        .SP           (SP   ),
        .LV           (LV   ),
        .CPP          (CPP  ),
        .TOS          (TOS  ),
        .OPC          (OPC  ),
        .H            (H    ),
		.out          (out  ),
		.MBR          (MBR  )     //add
    );
    
IP006_uart_reg32_0 uart_reg(
        .clk           (clk             ),
        .reg100        (reg008_data_out ),
        .reg101        (32'd0           ),
        .reg102        (32'd0           ),
        .reg103        (32'd0           ),
        .reg104        (32'd0           ),
        .reg105        (32'd0           ),
        .reg106        (32'd0           ),
        .reg107        (32'd0           ),
        .reg108        (32'd0           ),
        .reg109        (32'd0           ),
        .reg10A        (32'd0           ),
        .reg10B        (32'd0           ),
        .reg10C        (32'd0           ),
        .reg10D        (32'd0           ),
        .reg10E        (32'd0           ),
        .reg10F        (32'd0           ),
        .reset_s       (reset_n         ),
        .uartA_txd     (uart_a_tx       ),
        .uartA_rxd     (uart_a_rx       ),
        .uartB_rxd     (1'd0            ),
        .reg000        (reg000_addr_reg ),
        .reg001        (reg001_data_in  ),
        .reg002        (reg002_read_en  ),
        .reg003        (reg003_write_en )
    );
    
    MUX_DEMUX mux_demux(
        .SEL        (SEL_GUI_UART ),
        .TX_GUI     (TX_GUI       ),
        .RX_GUI     (RX_GUI ),
        .TX_UART    (uart_a_tx ),
        .RX_UART    (uart_a_rx ),
        .TX_MIC     (TX ),
        .RX_MIC     (RX_SYNC_IN)
    );
    
       
    // Control signals
    logic mic1_run;
    logic led_idle;
    logic led_run;
    
    logic button_run;
    logic button_step;
    logic button_step_edge;
    logic button_stop;
    
    assign led_idle = !led_run;

    // Begin of State Machine
    //enum {IDLE, RUN, STEP} current_state, next_state;

    localparam IDLE = 0;
    localparam RUN  = 1;
    localparam STEP = 2;
    
    logic [1:0] current_state, next_state;

    always_comb begin
        next_state = current_state;
        led_run = 0;
        mic1_run = 0;
        
        case (current_state)
            IDLE: begin
		        if(button_run)  next_state = RUN;
		        if(button_step_edge) next_state = STEP;		  
        	end
            
            RUN: begin
		        led_run = 1;
		        mic1_run = 1;		
		          
		        if(button_stop) next_state = IDLE;
            end

            STEP: begin
                led_run = 1;
                mic1_run = 1;

                next_state = IDLE;
            end
		    
		    default: begin
		        next_state = IDLE;

		    end
        endcase
    end

    always @(posedge clk) begin
        current_state <= next_state;

        if(!resetn) begin
            current_state <= IDLE;
        end
    end

    `ifndef SYNTHESIS
    reg [255:0] cur_state_text;

    always_comb begin
        case(current_state)
            IDLE:   cur_state_text  = "IDLE";
            RUN:    cur_state_text  = "RUN";
            STEP:   cur_state_text  = "STEP";
        endcase
    end
    `endif

    logic [31:0] out;

    assign LED1 = out[0];
    assign LED2 = out[1];
    assign LED3 = out[2];
    assign LED4 = out[31];
    assign LED5 = |out;


    assign LEDR = led_idle;
    assign LEDG = led_run;

endmodule
