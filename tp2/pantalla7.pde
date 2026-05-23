void pantalla7() {

  PFont fuenteTexto;
  float posYtexto1;
  float alpha1;
  float posXtexto2;
  float posYtexto2;
  float alpha2;
  float posYtexto3;

  PImage simbolos;
  float posXsimbolosI;
  float posYsimbolosI;
  float posXsimbolosD;
  float posYsimbolosD;


  fuenteTexto = loadFont ("Calibri-Light-48.vlw");
  textFont(fuenteTexto);
  posYtexto1= 100;
  alpha1= 255;

  posYtexto2= 380;
  posXtexto2= width/2;
  alpha2= 255;

  posYtexto3= 250;

  simbolos=loadImage ("simbolos.png");
  posXsimbolosI = 15;
  posYsimbolosI = 40;
  posXsimbolosD = 465;
  posYsimbolosD = 625;


  background (255);


  if (contador>10) {

    if (contador<100) {

      posYtexto1= map(contador, 10, 100, -40, 100);
      alpha1= map (contador, 10, 100, 0, 255);
    };

    if (contador>450) {

      posYtexto1= map(contador, 450, 900, 100, 800);
    };

    textSize(40);
    textAlign(CENTER);
    fill(0, alpha1);
    text("Estado del jugador:", width/2, posYtexto1);
  };

  //proximo texto: activo

  if ((contador>130 && contador<160)||  //or
    (contador>210 && contador<240)||
    (contador>280)) {

    if (contador<380) {
    }

      if (contador>450) {

        posYtexto3= map(contador, 450, 900, 250, 950);
       
    }

    textSize(50);
    textAlign(CENTER);
    fill(255, 0, 0);
    text("ACTIVO", width/2, posYtexto3);
  };

  if (contador>400) {

    if (contador<450) {
    };

    if (contador>450) {

      posYtexto2= map(contador, 450, 900, 380, 1080);
    };

    textSize(40);
    textAlign(CENTER);
    fill(0, alpha2);
    text("Gana y sobrevive", posXtexto2, posYtexto2);
  }

  //simbolos izq
  if (contador>0 ) {
    posYsimbolosI= map(contador, 50, 500, -200, height );

noTint();
fill(255);
    image (simbolos, posXsimbolosI, posYsimbolosI, 150, 350);
  };

  if (contador>0 ) {

    posYsimbolosI= map(contador, 280, 730, -200, height );

noTint();
fill(255);
    image (simbolos, posXsimbolosI, posYsimbolosI, 150, 350);


    //simbolos der
  };

  if (contador>0 ) {

    posYsimbolosD= map(contador, 50, 500, -200, height );

noTint();
fill(255);
    image (simbolos, posXsimbolosD, posYsimbolosD, 150, 350);
  };

  if (contador>0 ) {

    posYsimbolosD= map(contador, 280, 730, -200, height );

noTint();
fill(255);
    image (simbolos, posXsimbolosD, posYsimbolosD, 150, 350);
  }
  
  if(contador>850){
  
    estado=8;
    contador=0;
  
  }
  
};
