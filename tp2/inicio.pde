

void inicio () {

  //variables
  PImage fondo;
  PImage titulo;
  float posXboton;
  float posYboton;
  float tamXboton;
  float tamYboton;
  PFont fuenteBoton;


  //asignacion de variables
  fuenteBoton= loadFont ("ArialMT-48.vlw");
  fondo = loadImage ("ShibuyaCrossing.png");
  titulo = loadImage ("titulo.png");
  posXboton=360;
  posYboton=410;
  tamXboton=120;
  tamYboton=50;
  textFont(fuenteBoton);
  
  
//pantalla
  image (fondo, 0, 0, 640, 480);
  image (titulo, 30, 40, 250, 150);
  fill(255);
  rect(posXboton, posYboton, tamXboton, tamYboton, 40);
  fill(0);
  textSize(30);
  textAlign(LEFT);
  text("START", 374, 445);

  
};
