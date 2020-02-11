      *---------------------------------------------------------
      * Source information
      * @@LIBRARY: GROSSD1
      * @@FILE: QRPGLESRC
      * @@MEMBER: RPGLEPRINT
      * @@TYPE: RPGLE
      * @@TEXT: Shortest possible Full-Free RPG Hello World
      *---------------------------------------------------------
        Dcl-F QPRINT Printer(80);
        Dcl-DS OutputDS;
          Hello Char(80) Pos(1) Inz('Hello, World!');
        End-DS;
        Write QPRINT OutputDS;
        *INLR = *ON;
