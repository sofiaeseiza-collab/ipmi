PImage foto; //vaiable foto
int desplazar; //trasladar la figura


void setup() {
  size(800, 400);
  foto = loadImage("descarga (1) (1).jpg");
  desplazar= +400;
}

void draw() {
  background (174, 159, 130);
  image (foto, 0, 0, 400, 400); //imagen
  strokeWeight(0); //borra bordes


  fill(197, 183, 156);
  arc (226+desplazar, 208, 380, 380, HALF_PI, PI); //pag 74 libro processing
  fill(174, 159, 130);
  stroke(174, 159, 130);
  arc (226+desplazar, 208, 300, 300, HALF_PI, PI);
  rect(411, 206, 80, 45);

  //RECTANGULOS

  fill(44, 62, 148);//rect azules
  rect (308+desplazar, 42, 27, 27);
  rect (70+desplazar, 85, 150, 40);
  rect(180+desplazar, 238, 76, 56);

  fill(171, 142, 50); //rect amarillo grande
  rect(180+desplazar, 69, 155, 110);

  fill(197, 183, 156);//rect claros
  rect(207+desplazar, 42, 100, 27);
  rect(142+desplazar, 208, 38, 86);

  fill(166, 53, 19); //rect rojos
  rect (70+desplazar, 149, 110, 59);
  rect(255+desplazar, 209, 110, 85);

  fill(195, 147, 21); //rect amarillos
  rect(335+desplazar, 122, 20, 87);
  rect(104+desplazar, 208, 38, 86);

  fill(59, 34, 4); //rect marron
  rect(180+desplazar, 292, 125, 33);

  fill(190, 58, 81);//rect rosa
  rect(90+desplazar, 298, 80, 25);

  fill(208, 85, 28);//rect naranja
  rect(273+desplazar, 387, 85, 40);



  //TRIANGULOS

  fill(191, 111, 50); //tri naranja oscuro
  triangle(146+desplazar, 98, 170+desplazar, 8, 305+desplazar, 111);
  triangle(305+desplazar, 358, 322+desplazar, 290, 331+desplazar, 345);

  fill(228, 143, 24);//tri naranja
  triangle(108+desplazar, 115, 93+desplazar, 23, 336+desplazar, 128);

  fill(231, 205, 82); //tri amarillos
  triangle(61+desplazar, 84, 51+desplazar, 37, 203+desplazar, 95);
  triangle(87+desplazar, 400, 94+desplazar, 389, 102+desplazar, 400);

  fill(90, 115, 156);//tri azul
  triangle(125+desplazar, 290, 238+desplazar, 97, 352+desplazar, 122);

  fill(24, 38, 49); //parte azul oscuro - por encima del tri azul
  stroke(24, 38, 49);
  rect (120+desplazar, 275, 22, 80);
  rect(140+desplazar, 305, 22, 10);
  rect(114+desplazar, 274, 50, 5);
  rect(114+desplazar, 174, 5, 100);
  rect(137+desplazar, 353, 60, 8);
  rect(191+desplazar, 353, 40, 3);

  fill(166, 53, 19); //tri rojo
  triangle(167+desplazar, 348, 214+desplazar, 191, 352+desplazar, 173);

  fill(228, 143, 24);//tri naranja abajo
  triangle(286+desplazar, 354, 324+desplazar, 238, 343+desplazar, 334);

  fill(191, 111, 50); //tri naranja oscuro abajo
  triangle(305+desplazar, 358, 322+desplazar, 290, 331+desplazar, 345);

  fill(98, 25, 68);//tri violeta
  triangle(189+desplazar, 400, 199+desplazar, 377, 209+desplazar, 400);


  //OJO 1
  fill(186, 109, 143); //rosa
  ellipse(125+desplazar, 142, 130, 66);
  fill(112, 62, 165); //violeta
  ellipse(123+desplazar, 136, 140, 55);
  fill(239, 234, 215);//blanco
  ellipse(124+desplazar, 143, 128, 41);
  fill(140, 140, 150);//iris
  ellipse (125+desplazar, 143, 41, 36);
  fill(74, 54, 30);//pupila
  ellipse(125+desplazar, 143, 18, 14);


//OJO 2

  fill(186, 109, 143);//rosa
  ellipse(230+desplazar,205,185,75);
  fill(171, 142, 50);//amarillo
  ellipse(230+desplazar,220,170,73);
  fill(239, 234, 215);//blanco
  ellipse(229+desplazar,214,171,62);
  fill(150, 170, 171);//iris
  ellipse(229+desplazar,214,62,50);
  fill(74, 54, 30);//pupila
  ellipse(229+desplazar,214,45,35);

//OJO 3
fill(58, 109, 104);//azul
circle(291+desplazar,284,43);
fill(239, 234, 215);//blanco
circle(292+desplazar,285,33);
fill(195, 101, 37);
circle(291+desplazar,284,23);
fill(61, 22, 0);
circle(291+desplazar,284,13);


  println (mouseX, mouseY);
}
