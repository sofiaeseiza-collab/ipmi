
// https://youtu.be/p01pZG9QGzM


PImage imagen;
PImage boton;

int desplazar;

int columnas;
int filas;

int ancho;
int largo;
int posX1;
int posY1;
int posX2;
int posY2;

int fillrect1N;
int fillrect1B;
int fillrect2N;
int fillrect2B;
int fillrect3N;
int fillrect3B;
int fillrect4N;
int fillrect4B;

int cantidadRect;

float angulo;

int posXboton;
int posYboton;
int tamBoton;

void setup () {


  size (800, 400);

  background (255);

  imagen = loadImage("08.jpg");
  boton = loadImage ("restart.png");

  image (imagen, 0, 0, 400, 400);

  rectMode (CENTER);

  //asignacion de variables

  desplazar= +400;

  columnas = 2;
  filas = 2;

  posX1= 100+desplazar;
  posY1= 96;
  posX2= 212+desplazar;
  posY2= 11;
  ancho= 180;
  largo= 180;

  fillrect1N= 0;
  fillrect1B= 255;
  fillrect2N= 0;
  fillrect2B = 255;
  fillrect3N= 0;
  fillrect3B= 255;
  fillrect4N= 0;
  fillrect4B= 255;

  cantidadRect= 11;

  angulo = 0;

  posXboton = 600;
  posYboton = 197;
  tamBoton = 28;
  
};

void draw() {

  background (255);

  imageMode(CORNER);
  image (imagen, 0, 0, 400, 400);

  for (int i=0; i<columnas; i++) {

    for (int j=0; j<filas; j++) {

      for (int k=0; k<cantidadRect; k++) {



        int direccionX = 0;
        int direccionY = 0;

        if (i==0 && j==0) {        //RECT1

          direccionX = k * 3;
          direccionY = k * -3;


          if (esPar(k)==true) {
            fill(fillrect1N);
          } else {
            fill(fillrect1B);
          }
        }

        if (i==1 && j==0) {        //RECT2

          direccionX = k * 3;
          direccionY = k * 3;


          if (esPar(k)==true) {
            fill(fillrect2N);
          } else {
            fill(fillrect2B);
          }
        }

        if (i==1 && j==1) {          //RECT3

          direccionX = k * -3;
          direccionY = k * 3;

          if (esPar(k)==true) {
            fill(fillrect3N);
          } else {
            fill(fillrect3B);
          }
        }

        if (i==0 && j==1) {               //RECT4

          direccionX = k * -3;
          direccionY = k * -3;

          if (esPar(k)==true) {
            fill(fillrect4N);
          } else {
            fill(fillrect4B);
          }
        }


        push();

        translate(

          posX1 + i * 200 + direccionX,
          posY1 + j * 200 + direccionY

          );

        rotate (radians(angulo));

        cuadrado1 (0, 0, ancho - k * 18, largo - k * 18);
        pop();
      }
    };

    boton(posXboton, posYboton, tamBoton);
  };



  println(mouseX, mouseY);
};
