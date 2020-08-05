`timescale 1ns / 1ps

module demux_14(
    input a,
    input [0:1] sel,
    output [3:0] y
    );
    
    reg [3:0]yt=0;
    
    always@(*) begin
        
            if(sel==2'b00)
                yt[0]=a;
             else if(sel==2'b01)
                 yt[1]=a;
             else if(sel==2'b10)
                  yt[2]=a;
             else if(sel==2'b11)
                   yt[3]=a;
          end
         
               
   
   
   assign y=yt;
                
endmodule
