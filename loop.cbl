       IDENTIFICATION DIVISION.
       PROGRAM-ID. LOOP.
       
       ENVIRONMENT DIVISION.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
               01 TEXTO PIC X(10) VALUE 'x'.
               01 LOOP PIC 99 VALUE 5.
               01 LOOP2 PIC 99 VALUE 1.
           PROCEDURE DIVISION.
           PERFORM A-PARA WITH TEST AFTER UNTIL LOOP = 1.
           
           A-PARA.
               MOVE 1 TO LOOP2.                              
               PERFORM B-PARA WITH TEST AFTER UNTIL LOOP2 = LOOP.
               IF LOOP = 1 THEN
                  MOVE 'x' TO TEXTO
               END-IF.
               DISPLAY TEXTO.                           
               move 'x' to TEXTO.
           SUBTRACT 1 FROM LOOP.
           
           B-PARA.
               STRING 'x'TEXTO INTO TEXTO.               
           ADD 1 TO LOOP2.
                            