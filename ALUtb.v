`timescale 1ns / 1ps

module ALUtb();


reg [3:0]a,b;
reg [2:0]y;
wire [4:0]f;
ALU a1(f, a, b, y);

initial
begin
a=4'b0100;
b=4'b0010;
end
initial
begin
#5 y= 3'b000; 
#5 y= 3'b010; 
#5 y= 3'b100;
#5 y= 3'b001; 
#5 y= 3'b011; 
#5 $stop;
end


endmodule
