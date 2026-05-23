void pantalla2() {

  //variables
  PFont fuenteTexto;
  float posXtexto1;
  float posYtexto1;
  PImage simbolos;
  float posXsimbolosI;
  float posYsimbolosI;
  float posXsimbolosD;
  float posYsimbolosD;

  //asignacion de variables
  fuenteTexto = loadFont ("Calibri-Light-48.vlw");
  textFont(fuenteTexto);
  posXtexto1 = 123;
  posYtexto1= 100;
  simbolos=loadImage ("simbolos.png");
  posXsimbolosI = 15;
  posYsimbolosI = 40;
  posXsimbolosD = 465;
  posYsimbolosD = 625;


  //pantalla
  background(255);

  if (contador>0 && contador<90) {

    posYtexto1 =map(contador, 10, 90, -200, 100);
  };

  text ("Bienvenidx al juego", posXtexto1, posYtexto1, 80 );

  textSize(30);

  if (contador>130) {

    text("Registrando participante", 150, 200);
  };

  if (contador>175) {

    text(".", 450, 200);
  };

  if (contador>215) {

    text(".", 458, 200);
  };

  if (contador>255) {

    text(".", 466, 200);
  };

  if (contador> 295) {

    text("Acceso concedido", 200, 300);
  };
  //simbolos izq
  if (contador>0 ) {

    posYsimbolosI= map(contador, 50, 500, -200, height );

    image (simbolos, posXsimbolosI, posYsimbolosI, 150, 350);
  };

  if (contador>0 ) {

    posYsimbolosI= map(contador, 280, 730, -200, height );

    image (simbolos, posXsimbolosI, posYsimbolosI, 150, 350);


    //simbolos der
  };

  if (contador>0 ) {

    posYsimbolosD= map(contador, 50, 500, -200, height );

    image (simbolos, posXsimbolosD, posYsimbolosD, 150, 350);
  };

  if (contador>0 ) {

    posYsimbolosD= map(contador, 280, 730, -200, height );

    image (simbolos, posXsimbolosD, posYsimbolosD, 150, 350);


    if (contador>=360) {

      estado=3;
      contador=0;
    }
  };
};
