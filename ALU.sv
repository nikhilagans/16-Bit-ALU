// ALU_project

`timescale 1ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module ALU (A, B, NZP, ALU_control, result);
  
  input logic [15:0] A, B;
  input logic[3:0] ALU_control;
  output logic [15:0] result; //need it to be reg because it is changed in the always block
  output logic [2:0] NZP;
  
  // 0000 - NOT A 
  // 0001 - AND 
  // 0010 - ADD 
  // 0011 - SUBTRACT 
  // 0100 - OR 
  // 0101 - XOR 
  // 0110 - SHIFT LEFT 
  // 0111 - SHIFT RIGHT 
  
  always_comb //always block is triggered when input changes
    begin 
      
      case(ALU_control)
        4'b0000: result = ~A; // NOT
        4'b0001: result = A & B; // AND
        4'b0010: result = A + B; // ADD 
        4'b0011: result = A - B; // SUBTRACT
        4'b0100: result = A | B; // OR
		4'b0101: result = A ^ B; // XOR
        4'b0110: result = A << 1; // SHIFT LEFT 
        4'b0111: result = A >> 1; //SHIFT RIGHT 
        
        default: result = 16'b0;
      endcase
      
      NZP[2] = result[15];
      NZP[1] = (result == 16'b0);
      NZP[0] = ~NZP[2] & ~NZP[1];
      
    end 
endmodule
  
  
