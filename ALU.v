`timescale 1ns / 1ps


module ALU(f, a, b, y);
input [3:0]a,b;
input [2:0]y;
output reg [4:0]f;


parameter add =3'b000, sub =3'b001 , mul =3'b010, div =3'b011, andpr =3'b100;
always@(a,b,y)
begin
case (y)
add: f = a + b ;
sub: f = a - b ;
mul: f = a*b ;
div: f = a/b ;
andpr: f = a&b ;
endcase
end
endmodule
