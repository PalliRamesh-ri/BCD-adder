module bcd(input[3:0]a,b,
input cin,
output reg[3:0]sum,
output reg cout);


reg[4:0]temp;
always@(*)begin
temp=a+b+cin;
if(temp>9)
temp=temp+5'd6;
sum=temp[3:0];
cout=temp[4];
end
endmodule