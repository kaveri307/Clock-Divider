module Clock_divider(
    input clk,rst,
    output reg div_by_2,div_by_4,div_by_8,div_by_16,div_by_32
    );

    reg [4:0]d;

    initial d=0;
    
    always@(posedge clk)
    begin
        if(rst==0)
        begin
            d=d+5'b00001;
            div_by_2=d[0];
            div_by_4=d[1];
            div_by_8=d[2]; 
            div_by_16=d[3];
            div_by_32=d[4];
        end
    end
endmodule