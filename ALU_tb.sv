 `timescale 1ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module ALU_tb;
  
  logic [15:0] A, B;
  logic [3:0] ALU_control;
  logic [15:0] result;
  logic [2:0] NZP;
  
  // Delay between test cases = 20 ns
    localparam period = 20;
  
  
  ALU myALU ( .A(A), .B(B), .ALU_control(ALU_control), .result(result), .NZP(NZP));
  
  initial 
    begin
      
      $dumpfile("dump.vcd");
      $dumpvars(0, ALU_tb);
      
      A = 16'd5; // A = 5
      B = 16'd4; // B = 4
      
      ALU_control = 4'b0000; // NOT A
      #period;
      $display("NOT: %b", result);
      $display("NZP: %b", NZP);
      
      ALU_control = 4'b0001; // AND 
      #period;
      $display("AND: %b", result);
      $display("NZP: %b", NZP);
      
      ALU_control = 4'b0010; // ADD 
      #period;
      $display("ADD: %b", result);
      $display("NZP: %b", NZP);
      
      ALU_control = 4'b0011; // SUBTRACT 
      #period;
      $display("SUBTRACT: %b", result);
      $display("NZP: %b", NZP);
      
      ALU_control = 4'b0100; // OR 
      #period;
      $display("OR: %b", result);
      $display("NZP: %b", NZP);
      
      ALU_control = 4'b0101; // XOR
      #period;
      $display("XOR: %b", result);
      $display("NZP: %b", NZP);
      
      ALU_control = 4'b0110; // SHIFT LEFT 
      #period;
      $display("SHIFT LEFT: %b", result);
      $display("NZP: %b", NZP);
      
      ALU_control = 4'b0111; // SHIFT RIGHT 
      #period;
      $display("SHIFT RIGHT: %b", result);
      $display("NZP: %b", NZP);
      
      A = 16'd5; // A = 5
      B = 16'd5; // B = 5
      
      ALU_control = 4'd3;
      #period;
      $display("SUBTRACT: %b", result);
      $display("NZP: %b", NZP);
      
      A = 16'd4; // A = 4
      B = 16'd5; // B = 5
      
      ALU_control = 4'd3;
      #period;
      $display("SUBTRACT: %b", result);
      $display("NZP: %b", NZP);
      
      
      $finish;
    end
  
endmodule
      
