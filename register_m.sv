module register_m #(parameter WIDTH = 8)(q,d,enb,rst_,clk);  
 
//   localparam time WIDTH  =  8 ;
 
 
  output logic [WIDTH-1:0] q ; // register data output
  input  logic [WIDTH-1:0] d ; // register_test data input
  input  logic             enb   ; // register_test enable
  input  logic             rst_  ; // register_test reset (asynch)
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