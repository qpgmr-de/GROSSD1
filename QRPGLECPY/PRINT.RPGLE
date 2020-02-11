      *---------------------------------------------------------
      * Source information
      * @@LIBRARY: GROSSD1
      * @@FILE: QRPGLECPY
      * @@MEMBER: PRINT
      * @@TYPE: RPGLE
      * @@TEXT: ILE-RPG Print procedure
      *---------------------------------------------------------
**FREE
//********************************************************************
// Procedure  : Print
//
// Prints a message to stdout using C-style printf()
//
// Uses ILE-RPG / RPG IV fixed/free format to be compatible
// with prior releases
//
// Parameters :
//  - Msg       *VARCHAR(5000)   Message to print
//
// Returns    : Nothing
//********************************************************************
Dcl-Proc  Print;
   Dcl-PI *N;
          Msg            VarChar(5000) Const;
   End-PI;

   // Prototype for C-style printf
   Dcl-PR printf         ExtProc(*DCLCASE);
          *N             Pointer Value Options(*STRING);
          *N             Int(10) Value Options(*NOPASS);
   End-PR;

   // NEWLINE / Eon-of-Line / Line-Feed char
   Dcl-C  LF             Const(x'15');

   // modified message
   Dcl-S  myMsg          VarChar(5001) Inz;

   // Call printf and append LF
   myMsg = %Trim(Msg) + LF;
   printf(myMsg);

   Return;

End-Proc  Print;
//********************************************************************
