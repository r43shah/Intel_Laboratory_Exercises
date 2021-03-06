
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module SevenSeg_Decimal(

	//////////// SEG7 //////////
	output		     [7:0]		HEX0,
	output		     [7:0]		HEX1,
	output		     [7:0]		HEX2,
	output		     [7:0]		HEX3,
	output		     [7:0]		HEX4,
	output		     [7:0]		HEX5,

	//////////// LED //////////
	output		     [9:0]		LEDR,

	//////////// SW //////////
	input 		     [9:0]		SW
);



//=======================================================
//  REG/WIRE declarations
//=======================================================

reg[3:0] x;
reg[3:0] y;
reg[7:0] hex0_data;
reg[7:0] hex1_data;
reg[7:0] null = 8'b11111111;


//=======================================================
//  Structural coding
//=======================================================

always@(*)
begin

	x=SW[3:0];
	y=SW[7:4];

	hex0_data[7]=0;
	hex1_data[7]=0;
	
	hex0_data[0] = ~((x[3]|~x[2]||x[1]|x[0])&(x[3]|x[2]|x[1]|~x[0]));
	hex0_data[1] = (~x[3]&x[2]&~x[1]&x[0])|(~x[3]&x[2]&x[1]&~x[0]);
	hex0_data[2] = ~x[3]&~x[2]&x[1]&~x[0];
	hex0_data[3] = (~x[3]&~x[2]&~x[1]&x[0])|(~x[3]&x[2]&~x[1]&~x[0])|(~x[3]&x[2]&x[1]&x[0]);
	hex0_data[4] = ~((~x[3]&~x[2]&~x[1]&~x[0])|(~x[3]&~x[2]&x[1]&~x[0])|(~x[3]&x[2]&x[1]&~x[0])|(x[3]&~x[2]&~x[1]&~x[0]));
	hex0_data[5] = (x[1]&x[0])|(~x[2]&x[1])|(~x[3]&~x[2]&x[0]);
	hex0_data[6] = (~x[3]&~x[2]&~x[1])|(~x[3]&x[2]&x[1]&x[0]);
	hex0_data[7] = 1;
	
	hex1_data[0] = ~((y[3]|~y[2]||y[1]|y[0])&(y[3]|y[2]|y[1]|~y[0]));
	hex1_data[1] = (~y[3]&y[2]&~y[1]&y[0])|(~y[3]&y[2]&y[1]&~y[0]);
	hex1_data[2] = ~y[3]&~y[2]&y[1]&~y[0];
	hex1_data[3] = (~y[3]&~y[2]&~y[1]&y[0])|(~y[3]&y[2]&~y[1]&~y[0])|(~y[3]&y[2]&y[1]&y[0]);
	hex1_data[4] = ~((~y[3]&~y[2]&~y[1]&~y[0])|(~y[3]&~y[2]&y[1]&~y[0])|(~y[3]&y[2]&y[1]&~y[0])|(y[3]&~y[2]&~y[1]&~y[0]));
	hex1_data[5] = (y[1]&y[0])|(~y[2]&y[1])|(~y[3]&~y[2]&y[0]);
	hex1_data[6] = (~y[3]&~y[2]&~y[1])|(~y[3]&y[2]&y[1]&y[0]);
	hex1_data[7] = 1;
	
	
	
	

end

assign HEX0 = hex0_data;
assign HEX1 = hex1_data;
assign HEX2 = null;
assign HEX3 = null;
assign HEX4 = null;
assign HEX5 = null;


endmodule
