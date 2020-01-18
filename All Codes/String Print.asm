.MODEL SMALL
.STACK 100H
.DATA
message db 'Hello World! $'		; Message to be displayed
.CODE
MAIN  PROC
      mov    ax,@data
      mov    ds,ax

      mov    ah,9h			; function to display a string
      mov    dx,offset message		; offset of Message string
      int    21h			; Dos Interrupt (initiate the process)

      mov    ax,4C00h			; function to terminate
      int    21h			; Dos Interrupt

MAIN  ENDP
END   MAIN
