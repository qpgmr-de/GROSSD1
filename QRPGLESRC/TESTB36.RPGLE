      *---------------------------------------------------------
      * Source information
      * @@LIBRARY: GROSSD1
      * @@FILE: QRPGLESRC
      * @@MEMBER: TESTB36
      * @@TYPE: RPGLE
      * @@TEXT: Test Base36 conversion
      *---------------------------------------------------------
**FREE
/COPY QRPGLRCPY,CTLOPT

DCL-F TESTB36 WORKSTN;

DOW *INKC = *OFF;
  EXFMT TESTB36FM;

  TESTPROC(B36NUM);
ENDDO;

*INLR = *ON;
RETURN;

// --------------------------------------------------
// Procedure name: TESTPROC
// Purpose:        Test a Procedure
// Returns:
// Parameter:      PARAM1 => 1st Parameter
// --------------------------------------------------
DCL-PROC TESTPROC ;
  DCL-PI *N;
    PARAM1 CHAR(10);
  END-PI ;
  // Your local fields go here

  // Your calculation code goes here

  return ;
END-PROC ;
