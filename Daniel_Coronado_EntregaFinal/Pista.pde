class Pista{
float posicionX;
float posicionY;
int xP;
int yP;
float R = 105;

//Carretera
Pista(float posicionXInicial, float posicionYInicial){
 posicionX = posicionXInicial;
 posicionY = posicionYInicial;
}
//Dibujar carretera
void pintese(){
  fill(R);
//Pista
  stroke(0);
  rect(xP-10,yP+100,1220,400);
  fill(255,255,0);
  noStroke();
  rect(xP+200,yP+280,150,20);
  rect(xP+500,yP+280,150,20);
  rect(xP+800,yP+280,150,20);
}
//cambio de color
void cambiodecolor(){ 
 if (keyPressed) {
   if (key== 'r'){
   R=R-10;
 }   if(R < 0){
    R = 255;
  }
  
   
 
 } 
 }
    
    

}
