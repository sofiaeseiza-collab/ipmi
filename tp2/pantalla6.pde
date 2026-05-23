void pantalla6 () {

  float posXtexto;
  float posYtexto;
  float tamTexto;
  PFont fuenteTexto;
  PImage Usagi;
  PImage Arisu;
  PImage Chishiya;
  float posXarisu;
  float alphaIA;
  float alphaTA;
  float posXusagi;
  float alphaIU;
  float alphaTU;
  float posXchi;
  float alphaIC;
  float alphaTC;

  fuenteTexto = loadFont ("Calibri-Light-48.vlw");
  textFont(fuenteTexto);
  posXtexto= width/2;
  posYtexto=50;
  tamTexto=40;



  Arisu= loadImage ("Arisu.png");
  posXarisu= 0;
  alphaIA= 255;
  alphaTA= 255;


  Usagi= loadImage("Usagi.png");
  posXusagi= 440;
  alphaIU= 255;
  alphaTU= 255;

  Chishiya= loadImage ("chishiya.png");
  posXchi= 0;
  alphaIC= 255;
  alphaTC= 255;

  background (255);

  if (contador>0) {

    if (contador<30) {

      posYtexto= map(contador, 0, 30, -20, 50);
    }

    if (contador>820) {

      alphaTC= map(contador, 820, 860, 255, 0);
    }

    textSize(tamTexto);
    fill(0, alphaTC);
    textAlign(CENTER);
    text ("Jugadores destacados", posXtexto, posYtexto);
  };

  if (contador>30) {                //IMAGEN ARISU

    if (contador<70) {

      posXarisu= map(contador, 30, 70, 510, 0);
      alphaIA= map (contador, 30, 70, 0, 255);
    }

    if (contador>280) {

      posXarisu= map(contador, 280, 320, 0, -230);
      alphaIA= map(contador, 280, 320, 255, 0);
    }

    tint(255, alphaIA);
    image (Arisu, posXarisu, 120, 200, 300);
  }

  if (contador>70) {                   //TEXTO ARISU

    if (contador<90) {

      alphaTA= map(contador, 70, 90, 0, 255);
    }

    if (contador>280) {

      alphaTA= map(contador, 280, 300, 255, 0);
    };

    textSize (40);
    fill(255, 0, 0, alphaTA);
    text("ARISU", 265, 148);

    textAlign (LEFT);
    textSize(20);
    fill(0, alphaTA);
    text(" Se destaca por su gran inteligencia y \n capacidad de análisis \n Durante los juegos logra encontrar estrategias \n rápidamente y comprender las reglas \n antes que los demás participantes \n Su habilidad principal son los juegos de lógica \n e inteligencia.", 215, 200);
  };

  if (contador>320) {         //IMAGEN USAGI

    if (contador<360) {

      posXusagi= map(contador, 320, 360, -60, 440);
      alphaIU=map (contador, 320, 360, 0, 255);
    }

    if (contador>550) {

      posXusagi= map(contador, 550, 590, 440, 670);
      alphaIU=map (contador, 550, 590, 255, 0);
    }
    tint (255, alphaIU);
    image (Usagi, posXusagi, 120, 200, 300);
  }

  if (contador>360) {                   //TEXTO USAGI

    if (contador<380) {

      alphaTU= map(contador, 360, 380, 0, 255);
    }

    if (contador>550) {

      alphaTU= map(contador, 550, 570, 255, 0);
    };

    textSize(40);
    fill(255, 0, 0, alphaTU);
    text ("USAGI", 307, 148);

    textSize(20);
    fill(0, alphaTU);
    textAlign (LEFT);
    text(" Posee una gran resistencia física y habilidades \n de supervivencia. Gracias a su agilidad, \n velocidad y experiencia escalando montañas, \n puede adaptarse fácilmente a los juegos más \n peligrosos. También se caracteriza por \n mantener la calma bajo presión.", 30, 200);
  };

  if (contador>590) {                //IMAGEN CHISHIYA

    if (contador<630) {

      posXchi= map(contador, 590, 630, 510, 0);
      alphaIC= map (contador, 590, 630, 0, 255);
    }

    if (contador>820) {

      posXchi= map(contador, 820, 860, 0, -230);
      alphaIC= map(contador, 820, 860, 255, 0);
    }

    tint(255, alphaIC);
    image (Chishiya, posXchi, 120, 200, 300);
  }

  if (contador>630) {                   //TEXTO CHISHIYA

    if (contador<650) {

      alphaTC= map(contador, 630, 650, 0, 255);
    }

    if (contador>820) {

      alphaTC= map(contador, 820, 840, 255, 0);
    };

    textSize (40);
    fill(255, 0, 0, alphaTC);
    text("CHISHIYA", 215, 148);

    textAlign (LEFT);
    textSize(20);
    fill(0, alphaTC);
    text(" Chishiya se caracteriza por su gran inteligencia, \n calma y capacidad de manipulación. Durante los \n juegos analiza cuidadosamente a los demás \n participantes y encuentra soluciones estratégicas \n rápidamente. Su habilidad principal son los \n juegos de lógica y psicología.", 215, 200);
  }

  if (contador>850) {

    estado=7;
    contador=0;
  }
};
