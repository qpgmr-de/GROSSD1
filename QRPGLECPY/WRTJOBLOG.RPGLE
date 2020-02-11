      *---------------------------------------------------------
      * Source information
      * @@LIBRARY: GROSSD1
      * @@FILE: QRPGLECPY
      * @@MEMBER: WRTJOBLOG
      * @@TYPE: RPGLE
      * @@TEXT: Write message string to job log
      *---------------------------------------------------------
**FREE
//********************************************************************
// Procedure  : WrtJobLog
//
// Prints a message to the job log
//
// Parameters :
//  - Msg       *VARCHAR(250)   Message to print
//
// Returns    : Nothing
//********************************************************************
Dcl-Proc  WrtJobLog;
   Dcl-PI *N;
          Msg            VarChar(250) Const;
   End-PI;

   // Prototype for API Qp0zlprintf
   // NOTE: the first parm must contain a literal '%s' which I guess
   //       tells IBM I to look at the next parm for a Carriage Return
   Dcl-PR writeJobLog   Int(10) ExtProc('Qp0zlprintf');
          *N            Pointer Value Options(*STRING);
          *N            Pointer Value Options(*STRING:*NOPASS);
          *N            Pointer Value Options(*STRING:*NOPASS);
          *N            Pointer Value Options(*STRING:*NOPASS);
          *N            Pointer Value Options(*STRING:*NOPASS);
          *N            Pointer Value Options(*STRING:*NOPASS);
       // optional add more *NOPASS parameters if needed
   End-PR;
   // API return code
   Dcl-S  rc            Int(10) Inz;

   // NEWLINE / Carriage-Return + Line-Feed
   Dcl-C  CRLF          Const(x'0d15');

   rc = writeJobLog(Msg + '%':CRLF);

   Return;

End-Proc  WrtJobLog;
