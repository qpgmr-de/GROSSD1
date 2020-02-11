      *---------------------------------------------------------
      * Source information
      * @@LIBRARY: GROSSD1
      * @@FILE: QRPGLESRC
      * @@MEMBER: TESTPRINT
      * @@TYPE: RPGLE
      * @@TEXT: Test PRINT procedure
      *---------------------------------------------------------
**FREE
//********************************************************************
// Program    : XYZ
//
// This is a simple ILE-RPG main program skeleton
//
// Parameters :
//   parm1         Type(Len)      Usage
//   ...
//
// Output     :
//********************************************************************
// Include standard control options
/COPY QRPGLECPY,CTLOPT
// add control-options here
//--------------------------------------------------------------------
// Main line
   WrtJobLog('Hello, Job Log!');
   Print('Hello, World!');

// Finito
   *INLR = *ON;
   Return;
//********************************************************************
// Special procedures
/COPY QRPGLECPY,WRTJOBLOG
/COPY QRPGLECPY,PRINT
//********************************************************************
