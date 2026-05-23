


void pantalla5() {

  PImage emoji1;
  PImage emoji2;
  PImage laser;
  PFont fuenteTexto;
  float posXtexto1;
  float posYtexto1;
  float posXtexto2;
  float posYtexto2;
  float alphaEmoji;
  float posXlaser;
  float posYlaser;
  float tamYlaser;
  float fondo;

  fuenteTexto = loadFont ("Calibri-Light-48.vlw");
  textFont(fuenteTexto);
  posXtexto1= 110;
  posYtexto1= 80;
  posXtexto2= 310;
  posYtexto2= 80;

  emoji1= loadImage("emoji1.png");
  emoji2= loadImage ("emoji2.png");
  laser= loadImage ("laser.png");
  posXlaser= 260;
  posYlaser= -20;
  tamYlaser=470;

  alphaEmoji= 255;
  
  fondo= 255;

  background(255);

  if (contador>83) {           //CAMBIO DE FONDO

    fill(255);
    background(0);
  } else {
    fill(0);
  }

  if (contador>=0) {            //MOVIMIENTO 1 TEXTO

    if (contador<50) {

      posYtexto1= map(contador, 0, 50, 560, 80);
      posYtexto2= map(contador, 0, 50, 560, 80);
    };
  };

  if (contador>80) {            //MOVIMIENTO 2 TEXTO

    if (contador<180) {

      posXtexto1= map(contador, 80, 100, 110, 90);
      posXtexto2= map(contador, 80, 100, 310, 330);
    }
  };

  textSize(30);
  textAlign(RIGHT);
  text("Si el jugador no \no su visa ", posXtexto1, posYtexto1, 200, 70);

  textSize(30);
  textAlign(LEFT);
  textLeading(16); //pagina 67 libro Processing
  text("supera un juego \nexpira, será", posXtexto2, posYtexto2, 200, 95);


  if (contador>50) {           //OPACIDAD EMOJI

    if (contador<80) {

      alphaEmoji= map(contador, 50, 80, 0, 255);
    };

    tint(255, alphaEmoji);
    image(emoji1, 200, 190, 215, 165);


    if (contador>80) {        //LASER

      if (contador<85) {

        posYlaser= -20;
      }

      image(laser, posXlaser, posYlaser, 90, tamYlaser);
    };
  };

  if (contador>83) {                     //EMOJI2

    image(emoji2, 200, 190, 215, 165);
  };

  if (contador>83) {
    fill(255, 0, 0);
    textSize(50);
    text("ELIMINADO", 195, 440);
  };

if(contador>135){

fondo= map(contador, 135, 155, 0, 255);

fill(255, fondo);
rect(-5, -5, 645, 485);

};
  if (contador>170) {

    estado=6;
    contador=0;
  }
};
