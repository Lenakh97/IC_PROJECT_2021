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

   parameter real   dv_pixel1 = 0.1;
   parameter real   dv_pixel2 = 0.3;
   parameter real   dv_pixel3 = 0.5;
   parameter real   dv_pixel4 = 1;

	PIXEL_SENSOR #(.dv_pixel(dv_pixel1)) PS1(VBN1, RAMP, RESET, ERASE, EXPOSE, READ1, DATA1);
	PIXEL_SENSOR #(.dv_pixel(dv_pixel2)) PS2(VBN1, RAMP, RESET, ERASE, EXPOSE, READ2, DATA2);
	PIXEL_SENSOR #(.dv_pixel(dv_pixel3)) PS3(VBN1, RAMP, RESET, ERASE, EXPOSE, READ3, DATA3);
	PIXEL_SENSOR #(.dv_pixel(dv_pixel4)) PS4(VBN1, RAMP, RESET, ERASE, EXPOSE, READ4, DATA4);
   
endmodule
