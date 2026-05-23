
void pantalla3() {

  //variables
  PFont fuenteTexto;
  PImage corazones;
  PImage picas;
  PImage diamantes;
  PImage treboles;

  float posXtexto1;
  float posYtexto1;
  float tamTexto1;
  float posXtexto2;
  float posYtexto2;
  float tamTexto2;

  float posXcorazones;
  float posYcorazones;
  float tamXcorazones;
  float tamYcorazones;

  float alphaCartas;

  float posXpicas;
  float posYpicas;
  float tamXpicas;
  float tamYpicas;

  float posXdiam;
  float posYdiam;
  float tamXdiam;
  float tamYdiam;

  float posXtrebol;
  float posYtrebol;
  float tamXtrebol;
  float tamYtrebol;

  float posXtextoC;
  float posYtextoC;

  float posXtextoP;
  float posYtextoP;

  float posXtextoD;
  float posYtextoD;

  float posXtextoT;
  float posYtextoT;

  float posXtextoFin;
  float posYtextoFin;
  
  float fondo;

  //asignacion de variables

  fuenteTexto = loadFont ("Calibri-Light-48.vlw");
  textFont(fuenteTexto);
  posXtexto1= width/2;
  posYtexto1=50;
  tamTexto1=40;
  posXtexto2=width/2;
  posYtexto2 = 110;
  tamTexto2 = 20;

  corazones = loadImage("3corazones.png");
  posXcorazones= 20;
  posYcorazones= 150;
  tamXcorazones= 120;
  tamYcorazones= 220;
  alphaCartas= 255;
  posXtextoC= 85;
  posYtextoC= 370;

  picas = loadImage("8picas.png");
  posXpicas= 180;
  posYpicas= 150;
  tamXpicas= 120;
  tamYpicas= 220;
  posXtextoP= 245;
  posYtextoP= 370;

  diamantes = loadImage ("10diamantes.png");
  posXdiam= 340;
  posYdiam= 150;
  tamXdiam= 120;
  tamYdiam= 220;
  posXtextoD= 405;
  posYtextoD= 370;


  treboles = loadImage ("5treboles.png");
  posXtrebol= 500;
  posYtrebol= 150;
  tamXtrebol= 120;
  tamYtrebol= 220;
  posXtextoT= 565;
  posYtextoT= 370;

  posXtextoFin= width/2;
  posYtextoFin= 440;

  fondo=255;

  //pantalla
  background (255);

  if (contador>=0 && contador<=20) {    //texto REGLAS

    posYtexto1= map(contador, 0, 20, 480, 40);
  }

  fill(0);
  textAlign(CENTER, CENTER);
  textSize (tamTexto1);
  text ("REGLAS", posXtexto1, posYtexto1, 400 );

  if (contador>20 ) {       //texto 2

    if (contador<40) {

      posYtexto2= map(contador, 20, 40, 480, 110);
    }
    fill(0);
    textAlign(CENTER, CENTER);
    textSize (tamTexto2);
    text ("Cada edificio tiene un juego distinto \n El simbolo y numero de la carta definen su tipo y dificultad", posXtexto2, posYtexto2, 500);
  }

  if (contador>50) {           //carta corazones

    if (contador<80) {

      posXcorazones=map(contador, 50, 80, 580, 20);
      alphaCartas=map (contador, 50, 80, 0, 255);
    }

    tint(255, alphaCartas);
    image(corazones, posXcorazones, posYcorazones, tamXcorazones, tamYcorazones);
  }

  if (contador>80) {

    if (contador<100) {

      posYtextoC = map (contador, 80, 100, 500, 370);
      alphaCartas=map (contador, 80, 100, 0, 255);
    }

    fill(0, 0, 0, alphaCartas);
    textAlign(CENTER, CENTER);
    textSize (tamTexto2);
    text("Corazones: \nPsicológicos", posXtextoC, posYtextoC);
  };





  if (contador>80) {               // carta picas

    if (contador<100) {

      posXpicas=map(contador, 80, 100, 580, 190);
      alphaCartas=map (contador, 80, 100, 0, 255);
    }

    tint(255, alphaCartas);
    image(picas, posXpicas, posYpicas, tamXpicas, tamYpicas);
  }


  if (contador>100) {

    if (contador<115) {

      posYtextoP = map (contador, 100, 115, 500, 370);
      alphaCartas=map (contador, 100, 115, 0, 255);
    }

    fill(0, 0, 0, alphaCartas);
    textAlign(CENTER, CENTER);
    textSize (tamTexto2);
    text("Picas: \nFísicos", posXtextoP, posYtextoP);
  };




  if (contador>100) {               // carta diamantes

    if (contador<115) {

      posXdiam=map(contador, 100, 115, 580, 340);
      alphaCartas=map (contador, 100, 115, 0, 255);
    }

    tint(255, alphaCartas);
    image(diamantes, posXdiam, posYdiam, tamXdiam, tamYdiam);
  }

  if (contador>115) {

    if (contador<130) {

      posYtextoD = map (contador, 115, 130, 500, 370);
      alphaCartas=map (contador, 115, 130, 0, 255);
    }

    fill(0, 0, 0, alphaCartas);
    textAlign(CENTER, CENTER);
    textSize (tamTexto2);
    text("Diamantes: \nInteligencia", posXtextoD, posYtextoD);
  };



  if (contador>115) {               // carta treboles

    if (contador<120) {

      posXtrebol=map(contador, 115, 120, 580, 500);
      alphaCartas=map (contador, 115, 120, 0, 255);
    }

    tint(255, alphaCartas);
    image(treboles, posXtrebol, posYtrebol, tamXtrebol, tamYtrebol);
  }

  if (contador>130) {

    if (contador<145) {

      posYtextoT = map (contador, 130, 145, 500, 370);
      alphaCartas=map (contador, 130, 145, 0, 255);
    }

    fill(0, 0, 0, alphaCartas);
    textAlign(CENTER, CENTER);
    textSize (tamTexto2);
    text("Treboles: \nEquipos", posXtextoT, posYtextoT);
  };


  if (contador>145) {

    if (contador<155) {

      posYtextoFin= map(contador, 145, 155, 500, 440);
    }


    textAlign(CENTER, CENTER);
    textSize (tamTexto2);
    text("La dificultad aumenta con el numero de las cartas", posXtextoFin, posYtextoFin );
  };
  
  if(contador>210){

fondo= map(contador, 210, 230, 0, 255);

fill(255, fondo);
rect(-5, -5, 645, 485);
  
    if(contador>=230){
  
  estado=4;
  contador=0;
  }

  };

};
