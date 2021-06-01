class F1{
float movXs;
float posiciony;
float vels;
Boolean estaVivo;
int inX = 20;
int inY = 120;
int dis = 150;
int degr = 255;
int f = 0; 
int e = 7;
int posY = 1;

public F1(float velInicial, float posXInicial){
 movXs=inX;
 posY = inY;
  vels=velInicial; 
  
}

void dibujar(){

//F1 Rojo
  fill(170);
  stroke(170);
  strokeWeight(1);
  rect(inX+37,inY+5,5,20);
  
  fill(50,20,degr);
  stroke(50,20,degr);
  strokeWeight(1);
  rect(inX-15,inY-2,8,34);
  rect(inX+50,inY+2,6,26);
  
  fill(255,0,0);
  stroke(255,0,0);
  strokeWeight(1);
  rect(inX,inY+12.5,60,5);
  rect(inX,inY+10,50,10);
  rect(inX,inY,20,30);
  rect(inX-15,inY,10,30);
  
  fill(0,0,0);
  stroke(0,0,0);
  strokeWeight(1);
  rect(inX-5,inY-10,20,10);
  rect(inX-5,inY+30,20,10);
  rect(inX+15,inY+12.5,10,5);
  rect(inX+32,inY,15,5);
  rect(inX+32,inY+25,15,5);
}    

//Controles del carro
void mover(){
  //para que se pueda mover con las flechas del teclado
   if(keyPressed==true){     
  if(keyCode==LEFT){
    inX=inX-5;
 }
  if(keyCode==RIGHT){
    inX=inX+5;
 }
 if(keyCode==UP){
    inY=inY-5;
 }
  if(keyCode==DOWN){
    inY=inY+5;
  }
 }
   if (inX > 1120){
     Eactual = GANADOR;
   }
  }

}
