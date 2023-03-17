module register_m #(parameter WIDTH = 8)(q,d,enb,rst_,clk);  
 
 
  output logic [WIDTH-1:0] q ; 
  input  logic [WIDTH-1:0] d ; 
  input  logic             enb   ; 
  input  logic             rst_  ; 
  input  logic             clk   ;
 
  timeunit        1ns ;
  timeprecision 100ps ;
 
  always_ff @(posedge clk or negedge rst_)  begin
    if(~rst_)
      q <= 8'b0;
    else if(enb)  
      q <= d;
    else
      q <= q;
  end
   
endmodule