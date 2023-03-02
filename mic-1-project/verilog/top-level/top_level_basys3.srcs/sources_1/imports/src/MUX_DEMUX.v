`timescale 1ns / 1ps
module MUX_DEMUX(
    input SEL,
    input TX_GUI,
    input TX_UART,
    input TX_MIC,
    output RX_UART,
    output RX_MIC,
    output RX_GUI
    );
    reg RX_UART, RX_MIC, RX_GUI;
    always@*
    begin
        case (SEL)        
            0 : begin
            RX_UART = TX_GUI;
            RX_GUI = TX_UART;
            RX_MIC = 1;            
            end
            
            1 : begin
            RX_MIC = TX_GUI;
            RX_GUI = TX_MIC;
            RX_UART = 1;
            end
        endcase
    end
endmodule
