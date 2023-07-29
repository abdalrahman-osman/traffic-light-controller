
_main:

;code.c,4 :: 		void main(){
;code.c,6 :: 		adcon1 = 7;
	MOVLW      7
	MOVWF      ADCON1+0
;code.c,7 :: 		trisa = 0b00001111;
	MOVLW      15
	MOVWF      TRISA+0
;code.c,8 :: 		trisb = 0b00000000;
	CLRF       TRISB+0
;code.c,9 :: 		trisc = 0B00000000;
	CLRF       TRISC+0
;code.c,10 :: 		trisd = 0b00000000;
	CLRF       TRISD+0
;code.c,11 :: 		portd = 0;
	CLRF       PORTD+0
;code.c,12 :: 		portc = 0;
	CLRF       PORTC+0
;code.c,13 :: 		portb = 0;
	CLRF       PORTB+0
;code.c,18 :: 		while(1){
L_main0:
;code.c,19 :: 		while(porta.b0 == 1){
L_main2:
	BTFSS      PORTA+0, 0
	GOTO       L_main3
;code.c,20 :: 		portd.b0 = 1;
	BSF        PORTD+0, 0
;code.c,21 :: 		portd.b5 = 1;
	BSF        PORTD+0, 5
;code.c,22 :: 		j = 2;
	MOVLW      2
	MOVWF      _j+0
;code.c,23 :: 		for(i = 1 ; i > -1 ; i--){
	MOVLW      1
	MOVWF      _i+0
L_main4:
	MOVLW      128
	XORLW      255
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main5
;code.c,24 :: 		portc = i;
	MOVF       _i+0, 0
	MOVWF      PORTC+0
;code.c,25 :: 		for(;j > -1 ; j--){
L_main7:
	MOVLW      128
	XORLW      255
	MOVWF      R0+0
	MOVLW      128
	XORWF      _j+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main8
;code.c,26 :: 		portb = j;
	MOVF       _j+0, 0
	MOVWF      PORTB+0
;code.c,27 :: 		if(j == 3 && i == 0){
	MOVF       _j+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L_main12
	MOVF       _i+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main12
L__main41:
;code.c,28 :: 		portd.b5 = 0;
	BCF        PORTD+0, 5
;code.c,29 :: 		portd.b4 = 1;
	BSF        PORTD+0, 4
;code.c,30 :: 		}
L_main12:
;code.c,31 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	DECFSZ     R11+0, 1
	GOTO       L_main13
	NOP
	NOP
;code.c,25 :: 		for(;j > -1 ; j--){
	DECF       _j+0, 1
;code.c,32 :: 		}
	GOTO       L_main7
L_main8:
;code.c,33 :: 		j = 9;
	MOVLW      9
	MOVWF      _j+0
;code.c,23 :: 		for(i = 1 ; i > -1 ; i--){
	DECF       _i+0, 1
;code.c,34 :: 		}
	GOTO       L_main4
L_main5:
;code.c,36 :: 		portd.b4 = 0;
	BCF        PORTD+0, 4
;code.c,37 :: 		portd.b0 = 0;
	BCF        PORTD+0, 0
;code.c,38 :: 		if(porta.b0 == 0)break;
	BTFSC      PORTA+0, 0
	GOTO       L_main14
	GOTO       L_main3
L_main14:
;code.c,39 :: 		portd.b2 = 1;
	BSF        PORTD+0, 2
;code.c,40 :: 		portd.b3 = 1;
	BSF        PORTD+0, 3
;code.c,41 :: 		j = 3;
	MOVLW      3
	MOVWF      _j+0
;code.c,42 :: 		for(i = 2 ; i > -1 ; i--){
	MOVLW      2
	MOVWF      _i+0
L_main15:
	MOVLW      128
	XORLW      255
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main16
;code.c,43 :: 		portc = i;
	MOVF       _i+0, 0
	MOVWF      PORTC+0
;code.c,44 :: 		for(;j > -1 ; j--){
L_main18:
	MOVLW      128
	XORLW      255
	MOVWF      R0+0
	MOVLW      128
	XORWF      _j+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main19
;code.c,45 :: 		portb = j;
	MOVF       _j+0, 0
	MOVWF      PORTB+0
;code.c,46 :: 		if(j == 3 && i == 0){
	MOVF       _j+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L_main23
	MOVF       _i+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main23
L__main40:
;code.c,47 :: 		portd.b2 = 0;
	BCF        PORTD+0, 2
;code.c,48 :: 		portd.b1 = 1;
	BSF        PORTD+0, 1
;code.c,49 :: 		}
L_main23:
;code.c,50 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main24:
	DECFSZ     R13+0, 1
	GOTO       L_main24
	DECFSZ     R12+0, 1
	GOTO       L_main24
	DECFSZ     R11+0, 1
	GOTO       L_main24
	NOP
	NOP
;code.c,44 :: 		for(;j > -1 ; j--){
	DECF       _j+0, 1
;code.c,51 :: 		}
	GOTO       L_main18
L_main19:
;code.c,52 :: 		j = 9;
	MOVLW      9
	MOVWF      _j+0
;code.c,42 :: 		for(i = 2 ; i > -1 ; i--){
	DECF       _i+0, 1
;code.c,53 :: 		}
	GOTO       L_main15
L_main16:
;code.c,54 :: 		portd.B1 = 0;
	BCF        PORTD+0, 1
;code.c,55 :: 		portd.b3 = 0;
	BCF        PORTD+0, 3
;code.c,56 :: 		}
	GOTO       L_main2
L_main3:
;code.c,62 :: 		while(porta.b0 == 0){
L_main25:
	BTFSC      PORTA+0, 0
	GOTO       L_main26
;code.c,63 :: 		if(porta.b1 == 1){
	BTFSS      PORTA+0, 1
	GOTO       L_main27
;code.c,64 :: 		portd = 0b00100001;
	MOVLW      33
	MOVWF      PORTD+0
;code.c,65 :: 		k = 0;
	CLRF       _k+0
;code.c,66 :: 		}
	GOTO       L_main28
L_main27:
;code.c,67 :: 		else if(porta.b2 == 1){
	BTFSS      PORTA+0, 2
	GOTO       L_main29
;code.c,68 :: 		if(k == 0){
	MOVF       _k+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main30
;code.c,69 :: 		portd = 0b00010001;
	MOVLW      17
	MOVWF      PORTD+0
;code.c,70 :: 		}
	GOTO       L_main31
L_main30:
;code.c,72 :: 		portd = 0b00001010;
	MOVLW      10
	MOVWF      PORTD+0
;code.c,73 :: 		}
L_main31:
;code.c,74 :: 		for(i = 0;i > -1;i--){
	CLRF       _i+0
L_main32:
	MOVLW      128
	XORLW      255
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main33
;code.c,75 :: 		portc = i;
	MOVF       _i+0, 0
	MOVWF      PORTC+0
;code.c,76 :: 		for(j = 3; j > -1 ; j--){
	MOVLW      3
	MOVWF      _j+0
L_main35:
	MOVLW      128
	XORLW      255
	MOVWF      R0+0
	MOVLW      128
	XORWF      _j+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main36
;code.c,77 :: 		portb = j;
	MOVF       _j+0, 0
	MOVWF      PORTB+0
;code.c,78 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main38:
	DECFSZ     R13+0, 1
	GOTO       L_main38
	DECFSZ     R12+0, 1
	GOTO       L_main38
	DECFSZ     R11+0, 1
	GOTO       L_main38
	NOP
	NOP
;code.c,76 :: 		for(j = 3; j > -1 ; j--){
	DECF       _j+0, 1
;code.c,79 :: 		}
	GOTO       L_main35
L_main36:
;code.c,74 :: 		for(i = 0;i > -1;i--){
	DECF       _i+0, 1
;code.c,80 :: 		}
	GOTO       L_main32
L_main33:
;code.c,81 :: 		portd.b1 = 0;
	BCF        PORTD+0, 1
;code.c,82 :: 		portd.b4 = 0;
	BCF        PORTD+0, 4
;code.c,83 :: 		}
	GOTO       L_main39
L_main29:
;code.c,85 :: 		portd = 0b00001100;
	MOVLW      12
	MOVWF      PORTD+0
;code.c,86 :: 		k = 1;
	MOVLW      1
	MOVWF      _k+0
;code.c,87 :: 		}
L_main39:
L_main28:
;code.c,88 :: 		}
	GOTO       L_main25
L_main26:
;code.c,89 :: 		portd = 0;
	CLRF       PORTD+0
;code.c,90 :: 		}
	GOTO       L_main0
;code.c,91 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
