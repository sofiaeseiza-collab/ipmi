void pantalla4 () {


  //variables
  PFont fuenteTexto;
  float posXtexto;
  float posYtexto;

  float alphaImage;
  PImage celu;
  float posXcelu;
  float posYcelu;

  PImage carta;
  float posXcarta;
  float posYcarta;

  //asignacion de variables

  fuenteTexto = loadFont ("Calibri-Light-48.vlw");
  textFont(fuenteTexto);
  posXtexto= width/2;
  posYtexto= 80;

  alphaImage= 255;

  celu= loadImage("celu.png");
  posXcelu= 70;
  posYcelu= 155;

  carta= loadImage ("3corazones.png");
  posXcarta= 380;
  posYcarta= 155;

  background (255);

  if (contador>10) {

    if (contador<50) {

      posYtexto= map(contador, 10, 50, -50, 80);
    }
    
    if(contador>150){
    
    posYtexto= map(contador, 150, 170, 80, -50 );
    
    }

    textAlign(CENTER);
    textSize (30);
    fill(0);
    text ("Al superar un juego, \nel jugador recibirá la carta correspondiente \ny 3 dias de visa", posXtexto, posYtexto);
  };

  if (contador>50) {

    if (contador<80) {

      posXcelu= map(contador, 50, 80, -40, 70);
      alphaImage= map(contador, 50, 80, 0, 255);
    }
    
    if(contador>150){
    
    posXcelu= map(contador, 150, 170, 70, -40);
    alphaImage= map(contador, 150, 170, 255, 0);
      
    }

    tint(255, alphaImage);
    image (celu, posXcelu, posYcelu, 190, 310);
  };

  if (contador>50) {

    if (contador<80) {

      posXcarta= map(contador, 50, 80, 520, 380);
      alphaImage= map(contador, 50, 80, 0, 255);
    }
    
    if(contador>150){
    
    posXcarta= map(contador, 150, 170, 380, 520);
    
    }

    tint(255, alphaImage);
    image (carta, posXcarta, posYcarta, 190, 310);
  };


  if (contador>=200) {

    estado=5;
    contador=0;
    
  }

  
};
