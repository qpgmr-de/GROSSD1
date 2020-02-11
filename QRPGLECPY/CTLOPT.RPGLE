      *---------------------------------------------------------
      * Source information
      * @@LIBRARY: GROSSD1
      * @@FILE: QRPGLECPY
      * @@MEMBER: CTLOPT
      * @@TYPE: RPGLE
      * @@TEXT: Standard **FREE Control Specs
      *---------------------------------------------------------
      ****************************************************************
      * Standard H Control specificatins
      *
      * Uses ILE-RPG / RPG IV fixed/free format to be compatible
      * with prior releases
      *
     H Copyright('(C)2020 Daniel Gross, qpgmr.de')
     H CCSID(*CHAR:*JOBRUN)
     H Option(*SRCSTMT:*SHOWCPY:*NODEBUGIO)
     H DatFmt(*ISO) TIMFMT(*ISO)
     H PgmInfo(*PCML:*MODULE)
      /If Defined(*CRTBNDRPG)
      *    if running CRTBNDPGM just use a new activition group
     H     DftActGrp(*NO) ActGrp(*NEW)
      *    otherwise specify the CRTPGM step
      /EndIf
      ****************************************************************
