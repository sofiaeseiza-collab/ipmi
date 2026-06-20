

void mouseDragged () {

  angulo++;
};


void mouseClicked() {



  if (mouseX>= 410 && mouseX<= 590 && mouseY>= 6 && mouseY<=185) {

    fillrect1N= color(random(255), random(255), random(255));
    fillrect1B= color(random(255), random(255), random(255));
    
  };


  if (mouseX>= 610 && mouseX<= 790 && mouseY>= 6 && mouseY<=185) {

    fillrect2N= color(random(255), random(255), random(255));
    fillrect2B= color(random(255), random(255), random(255));
    
  };

  if (mouseX>= 610 && mouseX<= 790 && mouseY>= 206 && mouseY<=385) {

    fillrect3N= color(random(255), random(255), random(255));
    fillrect3B= color(random(255), random(255), random(255));
    
  };

  if (mouseX>= 410 && mouseX<= 590 && mouseY>= 206 && mouseY<=385) {

    fillrect4N= color(random(255), random(255), random(255));
    fillrect4B= color(random(255), random(255), random(255));
    
  };


  float distancia = dist(mouseX, mouseY, posXboton, posYboton);

  if (distancia<tamBoton/2) {

    fillrect1N= 0;
    fillrect1B= 255;
    fillrect2N= 0;
    fillrect2B = 255;
    fillrect3N= 0;
    fillrect3B= 255;
    fillrect4N= 0;
    fillrect4B= 255;

    angulo = 0;
  };
  
};
