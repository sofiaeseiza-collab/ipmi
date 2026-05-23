
int contador;
int estado;
boolean boton1Activado;
boolean boton2Activado;

void setup() {

  size (640, 480);
  estado=1;
};

void draw () {

  contador++;

  if (estado==1) {

    inicio();
  }

  if (estado==2) {

    pantalla2();
  }

  if (estado==3) {


    pantalla3();
  }

  if (estado==4) {

    pantalla4();
  }

  if (estado==5) {

    pantalla5();
  }

  if(estado==6){
  
  pantalla6();
  }
  
  if(estado==7){
  
  pantalla7();
  
  }
  
  if(estado==8){
  
  pantalla8();
  
  }

  println(frameCount);
  println(mouseX, mouseY);
};

void mousePressed() {

 if(estado==1) {
   
   if (mouseX>=360 && mouseX<=360+120 && mouseY>=410 && mouseY<=410+50) {

    boton1Activado=true;
  
}
    
  };
  
  if (boton1Activado==true) {
    
    boton1Activado=false;
    estado=2;
    contador=0;
    
  };
  
  if(estado==8){
    
    if(mouseX>=260 && mouseX<=260+120 && mouseY>=400 && mouseY<=400+50){
  
  boton2Activado=true;
  
 
    }
  };
  
  if (boton2Activado==true) {
    
    boton2Activado=false;
    estado=1;
    contador=0;
    
  };
  
};
