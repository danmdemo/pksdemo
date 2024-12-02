**free
Ctl-Opt Option(*srcstmt:*nodebugio);


//****************************************************************
// File Definition Section
//****************************************************************

Dcl-F QSYSPRT Printer(132) Usage(*Output);

//****************************************************************
// Data Definition Section
//****************************************************************

//****************************************************************
// Interfaces
//****************************************************************

Dcl-Pr CALC010 Extpgm('CALC010');
  In_num1         Packed(5);
  In_num2         Packed(5);
  Out_total       Packed(10);
End-Pr;

Dcl-Pi CALC010 ;
  In_num1         Packed(5);
  In_num2         Packed(5);
  Out_total       Packed(10);
End-Pi;

//****************************************************************
// Main Line
//****************************************************************

    *InLr = *On;

    // Multiply the input numbers together
    Out_total = In_num1 * In_num2;

    Return;
