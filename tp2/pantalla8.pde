void pantalla8(){

  PImage fondo;
  float posXfondo;
  float posYfondo;
  float posXboton;
  float posYboton;
  float tamXboton;
  float tamYboton;
   PFont fuenteBoton;
   float alphaBoton;
   
  fondo= loadImage("final.png");
  posXfondo= 0;
  posYfondo= 0;
  
  fuenteBoton= loadFont ("ArialMT-48.vlw");
  posXboton=260;
  posYboton=400;
  tamXboton=120;
  tamYboton=50;
  alphaBoton= 255;
  textFont(fuenteBoton);
  
  
background (255);


if(contador>0){

 if(contador<60){
 
 posYfondo= map(contador, 0, 60, -480, 0);
 
 
 }
image(fondo, posXfondo, posYfondo, 640, 490);

};

if(contador> 80){

if(contador<100){

alphaBoton= map(contador, 80, 100, 0, 255);

};


fill(255, alphaBoton);
rect(posXboton,posYboton,tamXboton, tamYboton, 40);

textSize(25);
fill(0, alphaBoton);
text ("RESTART", 323, 435);

};



}
