`timescale 1 ns / 1 ps

module mic1_soc #(
    parameter STACKPOINTER_ADDRESS = 'h0060,
    parameter LOCALVARIABLEFRAME_ADDRESS = 'h0050,
    parameter CONSTANTPOOL_ADDRESS = 'h0048,
    parameter MIC1_PROGRAM = "add.mem",
    parameter MIC1_MICROCODE = "microcode.mem",
    parameter MEMORY_SIZE = 'h0083
    )(
    input clk,
    input resetn,
    input run,
    input sel_uart, //Added: Input signal to switch UART's
    input [31:0] w_adress, //Added: Input signal to select adress for new data
    input [31:0] w_data, //Added: Input signal to for new data
    input w_en, r_en, //Added: Input signal to enable 
    output ser_tx,
    input ser_rx,
    output [31:0] r_data, //Added: Output signal to read mem data
    output [31:0] out,
    
    output logic [31:0] MAR,
    output logic [31:0] MDR,
    output logic [31:0] PC,
    output logic [31:0] SP,
    output logic [31:0] LV,
    output logic [31:0] CPP,
    output logic [31:0] TOS,
    output logic [31:0] OPC,
    output logic [31:0] H,
    output logic [7:0] MBR
);
    
    
    //A
    wire mem_read;
    wire mem_write;
    //B
    wire mem_fetch;

     // Main memory
     //A
    wire [31:0] mem_addr;
    wire [31:0] mem_wdata;
    wire [31:0] mem_rdata;
    
    //B
    wire [31:0] mem_addr_instr;
    wire [7:0]  mem_rd_instr;

    // Microprogram memory
    wire [8:0]  mp_mem_addr;
    wire [35:0] mp_mem_wdata;
    wire [35:0] mp_mem_rdata;
    
    //Memory Manager
    wire [31:0] mm_wdata;
    wire [31:0] mm_rdata;
    wire [31:0] mm_addr;
    wire mm_wen;
    wire mm_ren;

    
    logic mic1_run;
    logic [31:0] mem_rdata_io;

    mic1 #(
        .STACKPOINTER_ADDRESS(STACKPOINTER_ADDRESS),
        .LOCALVARIABLEFRAME_ADDRESS(LOCALVARIABLEFRAME_ADDRESS),
        .CONSTANTPOOL_ADDRESS(CONSTANTPOOL_ADDRESS)
    ) mic1 (
        .clk            (clk           ),
        .resetn         (resetn        ),
        .run            (mic1_run      ),
        .mem_read       (mem_read      ),
        .mem_write      (mem_write     ),
        .mem_addr       (mem_addr      ),
        .mem_wdata      (mem_wdata     ),
        .mem_rdata      (mem_rdata_io  ),        
        .mem_fetch      (mem_fetch     ),
        .mem_addr_instr (mem_addr_instr),
        .mem_rd_instr   (mem_rd_instr  ),
        .mp_mem_addr    (mp_mem_addr   ),
        .mp_mem_rdata   (mp_mem_rdata  ),
        .MAR            (MAR           ),
        .MDR            (MDR           ),
        .PC             (PC            ),
        .SP             (SP            ),
        .LV             (LV            ),
        .CPP            (CPP           ),
        .TOS            (TOS           ),
        .OPC            (OPC           ),
        .H              (H             ),
        .out            (out           ),
        .MBR            (MBR           )        //add
    );
    
    logic [7:0] my_input;
    
    always_ff @(posedge clk) begin
        if (!resetn) begin
            my_input <= 0;
        end
    end
    
    // baud generator: 100 MHz -> 153,600 (16 x 9,600)
    // 100 MHz / 153,600 = 651.04; 2^24/651.04 = 25,770
    
    // baud generator: 6 MHz -> 153,600 (16 x 9,600)
    // 6 MHz / 153,600 = 39,0625; 2^24/39,0625 = 429,497
       
    localparam CNT_W=24;            // baud counter width
    localparam CNT_INC=24'd103079;   // baud counter increment
    logic stb_baud, stb_sample;
    uart_baud #(
        .CNT_W(CNT_W),
        .CNT_INC(CNT_INC)
    ) baud_gen (
        .clk(clk),
        .rst(!resetn),
        .stb_baud,
        .stb_sample
    );

    // receiver (to FPGA)
    logic rx_done;
    logic [7:0] received;
    uart_rx uart_rx_inst(
        .clk(clk),
        .rst(!resetn),  // reset button is active low
        .stb_sample,
        .data_in(ser_rx),
        .data_out(received),
        .rx_done
    );

    // transmitter (from FPGA)
    logic tx_start, tx_busy, tx_next;
    uart_tx uart_tx_inst (
        .clk(clk),
        .rst(!resetn),  // reset button is active low
        .stb_baud,
        .tx_start(mem_addr == 'hFFFFFFFD && mem_write && mic1_run),
        .data_in(mem_wdata[7:0]),
        .data_out(ser_tx),
        .tx_busy,
        .tx_next
    );
    
    // Always change mic1_run on rising edge
    always_ff @(posedge clk) begin
        mic1_run <= run && !tx_busy;
    end
    
    logic [7:0] received_register;

    // buffer RX done signal for TX start
    always_ff @(posedge clk) begin
        if (!resetn) begin
            received_register = 0;
        end
    
        if (rx_done) tx_start <= 1;
        if (stb_baud) tx_start <= 0;
        
        if (mem_addr == 'hFFFFFFFD && mem_read && mic1_run) begin
            received_register = 0;
        end else if (rx_done) begin
            received_register = received;
        end
    end
        
    always_comb begin
        case (mem_addr)
            32'hFFFFFFFD:  // IO address
                mem_rdata_io = {24'd0, received_register};
            default: 
                mem_rdata_io = mem_rdata;      
        endcase
    end
        

    control_store #(
        .INIT_F(MIC1_MICROCODE)
    ) control_store (
        .clk (clk),
        .ren (1'b1 && mic1_run),

        .waddr (mp_mem_addr),
        .raddr (mp_mem_addr),
        .rdata (mp_mem_rdata)
    );
    
    main_memory #(
        .INIT_F(MIC1_PROGRAM),
        .MEMORY_SIZE(MEMORY_SIZE)
    ) main_memory (
        .clk (clk),
        .wen_A (mm_wen), 
        .ren_A (mm_ren),
        .ren_B (mem_fetch && mic1_run),

        .addr_A (mm_addr),
        .addr_B (mem_addr_instr),
        .wdata_A (mm_wdata),
        .rdata_A (mm_rdata),
        .rdata_B (mem_rd_instr)
    );
    
    memory_manager#(
    )memory_manager (
    .clk       (clk), 
    .sel       (sel_uart),                      
    .wen_int   (mem_write && mic1_run), 
    .ren_int   (mem_read  && mic1_run),
    .addr_int  (mem_addr), 
    .wdata_int (mem_wdata),
    .wen_ext   (w_en), 
    .ren_ext   (r_en),                                   
    .addr_ext  (w_adress), 
    .wdata_ext (w_data),    
    .rdata_int (mem_rdata), 
    .rdata_ext (r_data),     
    .wen       (mm_wen), 
    .ren       (mm_ren),                     
    .addr      (mm_addr), 
    .wdata     (mm_wdata), 
    .rdata     (mm_rdata)
    );
endmodule
