Personaggio Hermione;
Trasfigurabile Piuma;
class Personaggio {
  PShape forma;

  Personaggio() {
    forma = loadShape("witch.obj");
    forma.setFill(color(#654321));
    forma.rotateX(radians(180));
  }
  void disegna(float x, float y) {
    shape(forma, x, y);
  }
}
class Trasfigurabile {
  PShape forma;
  Trasfigurabile() {
    forma = loadShape("quill.obj");
    forma.setFill(color(#14E3FC));
  }
  void disegna(float x, float y ) {
    shape(forma, x, y);
  }
}





float movimentox, movimentoy ;  

void movimentoautox() {
  if (movimentox >= width*0.70) {
    movimentox = width*0.2;
  } else {
    movimentox += 4 ;
  }
}

void setup() {
  fullScreen(P3D);

  Hermione = new Personaggio();
  Piuma = new Trasfigurabile();
}

void draw() {
  background(#87D6FC);
  lights();
  movimentoautox();
  Hermione.disegna(width*0.2, height/2);
  Piuma.disegna(width*0.9 - movimentox, height/2);
}

