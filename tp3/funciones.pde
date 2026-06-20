
void cuadrado1 (int posX1, int posY1, int ancho, int largo) {

  noStroke();

  rect (posX1, posY1, ancho, largo);
  
};



boolean esPar(int k) {

  if ( k%2==0) {

    return true;
  } else {
    return false;
  }
  
};


void boton (int posXboton, int posYboton, int tamBoton) {

  imageMode(CENTER);
  image(boton, posXboton, posYboton, tamBoton, tamBoton);
  
};
