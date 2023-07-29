short int i = 0;
short int j = 0;
short int k = 0;
void main(){

     adcon1 = 7;
     trisa = 0b00001111;
     trisb = 0b00000000;
     trisc = 0B00000000;
     trisd = 0b00000000;
     portd = 0;
     portc = 0;
     portb = 0;
/**************************************************************************************************/



  while(1){
  while(porta.b0 == 1){
           portd.b0 = 1;
           portd.b5 = 1;
           j = 2;
           for(i = 1 ; i > -1 ; i--){
                 portc = i;
                 for(;j > -1 ; j--){
                       portb = j;
                       if(j == 3 && i == 0){
                       portd.b5 = 0;
                       portd.b4 = 1;
                       }
                       delay_ms(1000);
                 }
                 j = 9;
           }
/*******************************************/
           portd.b4 = 0;
           portd.b0 = 0;
           if(porta.b0 == 0)break;
           portd.b2 = 1;
           portd.b3 = 1;
           j = 3;
           for(i = 2 ; i > -1 ; i--){
                 portc = i;
                 for(;j > -1 ; j--){
                       portb = j;
                       if(j == 3 && i == 0){
                            portd.b2 = 0;
                            portd.b1 = 1;
                       }
                       delay_ms(1000);
                 }
                 j = 9;
           }
           portd.B1 = 0;
           portd.b3 = 0;
  }


  /*****************************************************************************/


  while(porta.b0 == 0){
           if(porta.b1 == 1){
                       portd = 0b00100001;
                       k = 0;
           }
           else if(porta.b2 == 1){
                   if(k == 0){
                          portd = 0b00010001;
                   }
                   else{
                        portd = 0b00001010;
                   }
                   for(i = 0;i > -1;i--){
                         portc = i;
                         for(j = 3; j > -1 ; j--){
                               portb = j;
                               delay_ms(1000);
                         }
                   }
                   portd.b1 = 0;
                   portd.b4 = 0;
           }
           else{
                   portd = 0b00001100;
                   k = 1;
           }
  }
           portd = 0;
  }
}