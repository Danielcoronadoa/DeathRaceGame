class Explo{
 float vel;
 float dir=1;
 float explX=0;
 float explY; 
 //variable de movimiento
 boolean seMueve;
 
public Explo(float velInicial, float posXInicial, float posYInicial){
  explX=posXInicial+100;
  vel=velInicial;
  explY=posYInicial;
  seMueve = true;
}
//propiedades de movimiento
void moverHorizontal(){
  if (seMueve ==true){
  explX=explX+2;
  explX=explX+0.3*dir;
  if(explX>1200){
  dir=dir-1;
  }
  else if (explX<0){
  dir=1;
  }
  explX =  int(explX + random(1, 3));
  }
    if (seMueve ==true){
  explY=explY+2;
  explY=explY+0.3*dir;
  if(explY>600){
  dir=dir-1;
  }
  else if (explY<0){
  dir=1;
  }
  explY =  int(explY + random(1, 3));
  }
 
}
//para dibujar las explosiones
void dibujar(){

  //Explosion
  
  fill(255,0,0);
  stroke(255,0,0);
  strokeWeight(1);
  triangle(explX-20, explY-20, explX+20,explY+90, explX+80,explY-30);
  triangle(explX-40, explY+60, explX+50,explY-80, explX+90,explY+50);
  
  fill(255,255,0);
  stroke(255,255,0);
  strokeWeight(1);
  triangle(explX, explY, explX+30,explY+70, explX+70,explY-10);
  triangle(explX, explY+40, explX+30,explY-50, explX+70,explY+30);
}  

void parar (int posMouseX, int posMouseY){
  //distancia parar parar las Explociones
  float distanciacalculada =  dist(posMouseX, posMouseY,explX,explY);
  if (distanciacalculada<40){
    seMueve= false; 
  }
  else {
    seMueve=true;
}
}
}

  
  
  
  
