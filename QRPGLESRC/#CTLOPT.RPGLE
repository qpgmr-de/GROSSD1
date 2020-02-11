      *---------------------------------------------------------
      * Source information
      * @@LIBRARY: GROSSD1
      * @@FILE: QRPGLESRC
      * @@MEMBER: #CTLOPT
      * @@TYPE: RPGLE
      * @@TEXT: Standard **FREE Control Specs
      *---------------------------------------------------------
**FREE
Ctl-Opt Copyright('(C)2020 Daniel Gross, qpgmr.de');

Ctl-Opt CCSID(*CHAR:*JOBRUN);

Ctl-Opt Option(*SRCSTMT:*SHOWCPY:*NODEBUGIO);

Ctl-Opt DatFmt(*ISO) TIMFMT(*ISO);

Ctl-Opt PgmInfo(*PCML:*MODULE);

/If Defined(*CRTBNDRPG)
    // if running CRTBNDPGM just use a new activition group
    Ctl-Opt DftActGrp(*NO) ActGrp(*NEW);
    // otherwise specify the CRTPGM step
/EndIf
