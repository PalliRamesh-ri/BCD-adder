module bcd_tb();
reg[3:0]a,b;
reg cin;
wire[3:0]sum;
wire cout;

bcd ramesh(a,b,cin,sum,cout);
initial begin
$monitor("$time=%0t|a=%0d|b=%0d|cin=%0d|sum=%0d|cout=%0d|",$time,a,b,cin,sum,cout);
a=4; b=5; cin=0; #5;
a=4; b=5; cin=1; #5;
a=9; b=9; cin=0; #5;
a=8; b=5; cin=0; #5;
a=0; b=5; cin=0; #5;
$finish;#5;
end
endmodule

