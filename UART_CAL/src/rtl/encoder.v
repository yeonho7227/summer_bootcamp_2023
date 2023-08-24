module encoder(
    clk,
    n_rst,
    alu_done,
    calc_res,
    tx_data,
    uout_control,
    ener,
    parser_done
);

input clk;
input n_rst;
input alu_done;
input [31:0] calc_res;
input parser_done;

output reg [7:0] tx_data;
reg uout_valid; //encoder valid

output uout_control;
output ener;

localparam IDLE = 2'h0;
//localparam START = 2'h1;
localparam DATA = 2'h1;
localparam STOP = 2'h2;

reg [1:0] c_state;
reg [1:0] n_state;    

reg [15:0] cnt; 
reg [3:0] cnt2; //state cnt

always @ (posedge clk or negedge n_rst)
    if(!n_rst) begin
        c_state <= IDLE;   
    end
    else begin
        c_state <= n_state;
end

always @ (posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        cnt <= 16'h0000;
    end
    else if (c_state == DATA) begin
        cnt <= (cnt == 16'h1B2) ? 16'h0000 : cnt + 16'h0001;
    end
    else begin
        cnt <= cnt;
    end
end

assign ener = (cnt == 16'h1B2)? 1'b1 : 1'b0;

always @ (posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        cnt2 <= 4'h0;
    end
    else if  (c_state == DATA) begin
        cnt2 <= (cnt2 == 4'h8) ? 4'h0 : (ener == 1'b1) ? cnt2 + 4'h1 : cnt2;
    end
    else begin
        cnt2 <= cnt2;
    end
end


always @ (*) begin
    case(c_state) 
        IDLE : n_state = (alu_done  == 1'b1) ? DATA : c_state;
        //START : n_state = (cnt2 == 4'h0) ? DATA : c_state;
        DATA : n_state = (cnt2 == 4'h8) ? STOP : c_state;
        STOP : n_state = (cnt2 == 4'h0) ? IDLE : c_state;
        default : n_state = IDLE;
    endcase
end

reg [31:0] calc_res_q; 

always@(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        calc_res_q <= 32'h00000000;
    end
    else if (alu_done == 1'b1) begin 
        calc_res_q <= calc_res;
    end
    else if (c_state == DATA) begin
        calc_res_q <= (ener == 1'b1) ? {calc_res_q[27:0] , 4'h0} : calc_res_q;
    end
    else begin
        calc_res_q <= calc_res_q;
    end
end

//{4'h0, calc_res_q[31:4]}
/*
always @ (posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        tx_data <= 8'h00;
    end
    else if (c_state == DATA) begin
        if (calc_res_q [3:0] == 4'h0)
            tx_data <= 8'h30;
        else if(calc_res_q [3:0]== 4'h1)
            tx_data  <= 8'h31;
        else if(calc_res_q [3:0] == 4'h2)
            tx_data  <= 8'h32;
        else if(calc_res_q [3:0] == 4'h3)
            tx_data  <= 8'h33;
        else if(calc_res_q [3:0] == 4'h4)
            tx_data  <= 8'h34;
        else if(calc_res_q [3:0] == 4'h5)
            tx_data  <= 8'h35;
        else if(calc_res_q [3:0] == 4'h6)
            tx_data  <= 8'h36;
        else if(calc_res_q [3:0] == 4'h7)
            tx_data <= 8'h37;
        else if(calc_res_q [3:0] == 4'h8)
            tx_data  <= 8'h38;
        else if(calc_res_q [3:0] == 4'h9)
            tx_data  <= 8'h39;
        else if(calc_res_q [3:0] == 4'ha)
            tx_data  <= 8'h41;
        else if(calc_res_q [3:0] == 4'hb)
            tx_data <= 8'h42;
        else if(calc_res_q [3:0] == 4'hc)
            tx_data  <= 8'h43;
        else if(calc_res_q [3:0] == 4'hd)
            tx_data  <= 8'h44;
        else if(calc_res_q [3:0] == 4'he)
            tx_data<= 8'h45;
        else if(calc_res_q [3:0] == 4'hf)
            tx_data <= 8'h46;
        end 
        else begin
            tx_data <= tx_data;
        end
end
*/

always @ (posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        tx_data <= 8'h00;
    end
    else if (c_state == DATA) begin
        if (calc_res_q [31:28] == 4'h0)
            tx_data <= 8'h30;
        else if(calc_res_q [31:28] == 4'h1)
            tx_data  <= 8'h31;
        else if(calc_res_q [31:28] == 4'h2)
            tx_data  <= 8'h32;
        else if(calc_res_q [31:28] == 4'h3)
            tx_data  <= 8'h33;
        else if(calc_res_q [31:28] == 4'h4)
            tx_data  <= 8'h34;
        else if(calc_res_q [31:28] == 4'h5)
            tx_data  <= 8'h35;
        else if(calc_res_q [31:28] == 4'h6)
            tx_data  <= 8'h36;
        else if(calc_res_q [31:28] == 4'h7)
            tx_data <= 8'h37;
        else if(calc_res_q [31:28] == 4'h8)
            tx_data  <= 8'h38;
        else if(calc_res_q [31:28] == 4'h9)
            tx_data  <= 8'h39;
        else if(calc_res_q [31:28] == 4'ha)
            tx_data  <= 8'h41;
        else if(calc_res_q [31:28] == 4'hb)
            tx_data <= 8'h42;
        else if(calc_res_q [31:28] == 4'hc)
            tx_data  <= 8'h43;
        else if(calc_res_q [31:28] == 4'hd)
            tx_data  <= 8'h44;
        else if(calc_res_q [31:28] == 4'he)
            tx_data<= 8'h45;
        else if(calc_res_q [31:28] == 4'hf)
            tx_data <= 8'h46;
        end 
        else begin
            tx_data <= tx_data;
        end
end


//assign uout_valid = (c_state == STOP) ? 1'b1 : 1'b0;

always@(posedge clk or negedge n_rst) begin
    if (!n_rst) begin   
        uout_valid = 1'b0;
    end
    else if(c_state == IDLE) begin
        uout_valid = 1'b1;
    end
    else   begin
        uout_valid = 1'b0;
    end
end

reg uout_control;

always@(posedge clk or negedge n_rst) begin
    if (!n_rst) begin   
        uout_control = 1'b0;
    end
    else if(parser_done == 1'b1) begin
        uout_control = 1'b0;
    end
    else if(uout_valid == 1'b1)  begin
        uout_control = 1'b1;
    end
end

endmodule

/*
space 20
I 49

0 30
1 31
2 32
3 33
4 34
5 35
6 36
7 37
8 38
9 39

U 57
S 53
= 3D
* 2A
+ 2B
- 2D
/ 2F
*/


