class Bomba {
  float miX;
  float miY;
  float dirX=1.5;
  float dirY=1;

  // le permite existir a la bomba
  public Bomba (int posX, int posY) {
    miX = posX;
    miY = posY;
  }

  // habilidades
  void dibujarse() {
    noStroke();
    fill(0);
    ellipse(miX, miY, 40, 40);
    stroke(216,192,160);
    noFill();
    strokeWeight(4);
    bezier(miX+8, miY-16,  miX+20, miY-20,  miX+25, miY-25,  miX+30, miY-25);
    strokeWeight(5);
    stroke(255,255,0);
    point(miX+28, miY-25);
    stroke(255,0,0);
    point(miX+30, miY-25);
  }
  //movimiento random
  void moverse() {
    miX=miX+dirX;
    miY=miY+dirY;
  }
  //Le permite rebotar en la pantalla
  void rebotar() {
    if (miX<0 || miX>1200) {
      dirX=dirX*-1;
    }
    if (miY<0 || miY>600){
     dirY=dirY*-1; 
    }
  }
}
