class Meta{
 float movnX;
 float movnY;
 float posicionxn;

 
 Meta(float posXInicial){
 movnX=posXInicial;
 }
//Meta dibujo  
 void dibujar () {
 movnY=180;
   fill(255);
  stroke(255);
  strokeWeight(1);
  rect(1100,0,60,600);
  fill(0);
  stroke(0); 
  strokeWeight(1);
 for(int fin=0; fin < 600; fin = fin+40){
  quad(1100,fin, 1120,fin , 1120,fin+20 , 1100,fin+20);
 }
  for(int fin=0; fin < 600; fin = fin+40){
  quad(1120,fin+20, 1140,fin+20 , 1140,fin+40 , 1120,fin+40);
 }
 
  for(int fin=0; fin < 600; fin = fin+40){
  quad(1140,fin, 1160,fin , 1160,fin+20 , 1140,fin+20);
 }
 }
 
 
}
