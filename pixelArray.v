`include "pixelSensor.v"

module pixelArray(input logic      VBN1,
   input logic      RAMP,
   input logic      RESET,
   input logic      ERASE,
   input logic      EXPOSE,
   input logic      READ1,
   input logic      READ2,
   input logic      READ3,
   input logic      READ4,
   inout [7:0] DATA1,
   inout [7:0] DATA2,
   inout [7:0] DATA3,
   inout [7:0] DATA4);

	PIXEL_SENSOR PS1(VBN1, RAMP, RESET, ERASE, EXPOSE, READ1, DATA1);
	PIXEL_SENSOR PS2(VBN1, RAMP, RESET, ERASE, EXPOSE, READ2, DATA2);
	PIXEL_SENSOR PS3(VBN1, RAMP, RESET, ERASE, EXPOSE, READ3, DATA3);
	PIXEL_SENSOR PS4(VBN1, RAMP, RESET, ERASE, EXPOSE, READ4, DATA4);
   
endmodule
