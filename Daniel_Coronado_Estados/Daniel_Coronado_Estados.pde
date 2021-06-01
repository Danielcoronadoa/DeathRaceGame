PImage Inicio;
PImage Dificultad;
PImage Instrucc;
PImage Perdio;
PImage Gano;
Explo explo1;
Explo explo2;
Explo explo3;
Pista via;
Meta fin;
F1 carro;
Bomba[] bombas;
int numBombas = 15;
int INICIO = 0;
int DIFICULTAD = 20;
int INSTRUCCIONES = 40;
int JUEGO = 60;
int PERDEDOR = 80;
int GANADOR = 100;
int Eactual = 0;

  
void setup(){
  size(1200,600);
  
  //Explociones
  explo1= new Explo (3,0.+800, 30);
  explo2= new Explo (2,+10, 100);
  explo3= new Explo (1,+640,450);
  
  //Meta
  fin= new Meta (100);
  
   //Carretera
  via = new Pista(0,0);
  
  //Grupo de bombas a esquivar 
  bombas = new Bomba[numBombas];
  
 for(int i = 0; i < numBombas; i++){
   bombas[i] = new Bomba(int(random(0,width)), int(random(0, height)));
   
    //Carro Formula 1
  carro = new F1 (0,50);
 }  
     Inicio = loadImage("Estados Death Race 1.jpg");
    Dificultad = loadImage("Estados Death Race 2.jpg");
    Instrucc = loadImage("Estados Death Race 3.jpg");
    Perdio = loadImage("Estados Death Race 5.jpg");
    Gano = loadImage("Estados Death Race 6.jpg");
} 

void draw(){  
  
  if (Eactual == INICIO){
  image (Inicio,0,0,1200,600);
   if ((mouseX>400)&&      
    (mouseX < 400 + 400)&&  
    (mouseY > 400)&&
    (mouseY < 600)&&
    (mousePressed == true)) {
    Eactual = DIFICULTAD;
    println("ClicIni");
    
    }

  }
   else if (Eactual == DIFICULTAD){
  image (Dificultad,0,0,1200,600);  

  } 
    else if (Eactual == INSTRUCCIONES){
  image (Instrucc,0,0,1200,600); 
     
     if ((mouseX>1000)&&      
    (mouseX < 1000 + 200)&&  
    (mouseY > 400)&&
    (mouseY < 600)&&
    (mousePressed == true)) {
    Eactual = JUEGO;
    println("ClicIns");
    }
    
  } 
   else if (Eactual == JUEGO){
     //Fondo
  background(237,208,160);
 
  //Pista
  via.pintese();
  via.cambiodecolor();
  
  //Dibujar Meta
  fin.dibujar();
  
  //Parar explo
  explo1.parar(mouseX, mouseY);
  explo2.parar(mouseX, mouseY);
  explo3.parar(mouseX, mouseY);
  
 //pintese explosiones  
 explo1.moverHorizontal();
 explo1.dibujar(); 
 
 explo2.moverHorizontal();
 explo2.dibujar();  
 
 explo3.moverHorizontal();
 explo3.dibujar();
 
  
 //Carro con control
  carro.dibujar();
  carro.mover();
  

 
 //Pintar Bombas
for(int i = 0; i < numBombas; i++){
 bombas[i].dibujarse();
 bombas[i].moverse();
 bombas[i].rebotar();

     //caundo el sapito coge la mariquita suma puntos 
     float distCarroBombas = dist(carro.inX+80, carro.inY+40, bombas[i].miX+30, bombas[i].miY+30);
       if (distCarroBombas < 20) {  
        //
        println(distCarroBombas);
       Eactual = PERDEDOR; 
      }  
           //caundo el sapito coge la mariquita suma puntos 
     float distCarroExplo = dist(carro.inX+80, carro.inY+40, explo1.explX+40, explo1.explY+40);
       if (distCarroExplo < 25) {  
        //
        println(distCarroExplo);
       Eactual = PERDEDOR; 
      } 
     //caundo el sapito coge la mariquita suma puntos 
     float distCarroExplo2 = dist(carro.inX+80, carro.inY+40, explo2.explX+40, explo2.explY+40);
       if (distCarroExplo2 < 25) {  
        //
        println(distCarroExplo);
       Eactual = PERDEDOR; 
      } 
     //caundo el sapito coge la mariquita suma puntos 
     float distCarroExplo3 = dist(carro.inX+30, carro.inY+40, explo1.explX+40, explo1.explY+40);
       if (distCarroExplo3 < 20) {  
        //
        println(distCarroExplo);
       Eactual = PERDEDOR; 
      } 
   } 
  } 
   else if (Eactual == GANADOR){
  image (Gano,0,0,1200,600);  
  } 
   else if (Eactual == PERDEDOR){
  image (Perdio,0,0,1200,600);  
  } 

}
void keyReleased(){
  if (key=='1'){
    Eactual = INICIO;
  }
  else if (key=='2'){
    Eactual = DIFICULTAD;
  }
  else if (key=='3'){
    Eactual = INSTRUCCIONES;
  }
  else if (key=='4'){
    Eactual = JUEGO;
  }
  else if (key=='5'){
    Eactual = PERDEDOR;
  }
  else if (key=='6'){
    Eactual = GANADOR;
  }
}

void mouseReleased(){
   if (Eactual == DIFICULTAD){
    if ((mouseX>400)&&      
    (mouseX < 400 + 400)&&  
    (mouseY > 400)&&
    (mouseY < 470)){
    Eactual = INSTRUCCIONES;
    numBombas = 10;
    println("ClicDif");
      bombas = new Bomba[numBombas];
  
   for(int i = 0; i < numBombas; i++){
   bombas[i] = new Bomba(int(random(0,width)), int(random(0, height)));
    }
   } 
  }
}
