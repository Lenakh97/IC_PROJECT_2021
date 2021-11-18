`include "pixelSensorFsm.v"

module pixelTop(input logic        clk,
                       input  logic      reset,
                       output logic erase,
                       output logic expose,
                       output logic read1,
                       output logic read2,
                       output logic read3,
                       output logic read4,
                      output logic convert
                      );

    pixelSensorFsm PS_FSM(clk, reset, erase, expose, read1, read2, read3, read4, convert);
 
endmodule
