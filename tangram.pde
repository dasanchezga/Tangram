int d = 0;
float angle = -(PI/4);
float tAngle=0;
boolean a,b,c = true;
float x,y = 0;
float x1,y1 = 0;
float x2,y2 = 0;
float x3,y3 = 0;
float x4,y4 = 0;
float x5,y5 = 0;
float x6,y6 = 0;
///tamaño y color del canvas
void setup(){
  size(900,600);
  background(0);
}
void draw(){
  background(0);
  seleccionFiguras();
  if ( d == 0){
    resetTangram();
  }
  else if ( d != 0){
    mostrarTangram();
    while (d == 1){
        rotarprimerTriangulo();
        moverprimerTriangulo();
        break;
      }
      while (d == 2){
        moversegundoTriangulo();
        break;
      }
       while (d == 3){
        movertercerTriangulo();
        break;
      }
       while (d == 4){
        movercuartoTriangulo();
        break;
      }
       while (d == 5){
        moverquintoTriangulo();
        break;
      }
       while (d == 6){
        rotarCuadrado();
        moverCuadrado();
        break;
      }
       while (d == 7){
        moverParalelogramo();
        break;
      }
  }
  resetMatrix();
  println(angle);
  //println(key);
  //println(keyCode);
  println(a,b,c,d);
  //println(x5,y5);
  ////println(x4,y4);
}

//Mostrar y Reiniciar el Juego
void resetTangram(){
  mostrarTangram();
  angle = -(PI/4);
  tAngle =0;
  x = 0; y= 0; x1 =0; y1 = 0;
  x2 = 0; y2 = 0; x3 =0 ; y3 =0;
  x4 = 0; y4 =0; x5 =0;y5 =0; x6 =0; y6=0;
}
void mostrarTangram(){
  primerTriangulo();
  segundoTriangulo();
  tercerTriangulo();
  cuartoTriangulo();
  quintoTriangulo();
  cuadrado();
  paralelogramo();
}
///Dibujo y movimiento de Figuras
void primerTriangulo(){
  if (d == 0 ){
    fill(255,0,0);
    triangle(0+x, 0+y, 300+x, 0+y, 150+x, 150+y);
    }
  else
    rotarprimerTriangulo();
}
void moverprimerTriangulo(){
  if(keyPressed && key == CODED){
    if(keyCode == LEFT){
      translate(x-5,y);
      x = x - 5;
    }
    else if(keyCode == RIGHT){
      translate(x+5,y);
      x = x + 5;
    }
    else if(keyCode == UP){
      translate(x,y-5);
      y = y - 5;
    }
    else if(keyCode == DOWN){
      translate(x,y+5);
      y = y + 5;
    }
    if ((x)<0){
      x = x + 5;
    }
    if ((x+300)>width){
      x = x - 5;
    }
    if ((y)<0){
      y = y + 5;
    }
    if ((y+150)>height){
      y = y - 5;
    }
  }
}
void rotarprimerTriangulo(){
  fill(255,0,0);
  pushMatrix();
  translate(x,y);
  rotate(tAngle);
  triangle(0,0,300, 0, 150, 150);
  popMatrix();
}


void segundoTriangulo(){
  fill(0,255,0);
  triangle(0+x1,0+y1,150+x1,150+y1,0+x1,300+y1);
}
void moversegundoTriangulo(){
  fill(0,255,0);
  triangle(0+x1, 0+y1, 150+x1, 150+y1, 0+x1, 300+y1);
  circle(75+x1,150+y1,20);
  if(keyPressed && key == CODED){
    if(keyCode == LEFT){
      x1 = x1 - 5;
    }
    else if(keyCode == RIGHT){
      x1 = x1 + 5;
    }
    else if(keyCode == UP){
      y1 = y1 - 5;
    }
    else if(keyCode == DOWN){
      y1 = y1 + 5;
    }
    if ((x1)<0){
      x1 = x1 + 5;
    }
    if ((x1+150)>width){
      x1 = x1 - 5;
    }
    if ((y1)<0){
      y1 = y1 + 5;
    }
    if ((y1+300)>height){
      y1 = y1 - 5;
    }
  }
}

void tercerTriangulo(){
  fill(255,255,0);
  triangle(225+x2,75+y2,300+x2,0+y2,300+x2,150+y2);
}
void movertercerTriangulo(){
  fill(255,255,0);
  triangle(225+x2,75+y2,300+x2,0+y2,300+x2,150+y2);
  circle(265+x2,75+y2,20);
  if(keyPressed && key == CODED){
    if(keyCode == LEFT){
      x2 = x2 - 5;
    }
    else if(keyCode == RIGHT){
      x2 = x2 + 5;
    }
    else if(keyCode == UP){
      y2 = y2 - 5;
    }
    else if(keyCode == DOWN){
      y2 = y2 + 5;
    }
    if ((x2+225)<0){
      x2 = x2 + 5;
    }
    if ((x2+300)>width){
      x2 = x2 - 5;
    }
    if ((y2)<0){
      y2 = y2 + 5;
    }
    if ((y2+150)>height){
      y2 = y2 - 5;
    }
  }
}

void cuartoTriangulo(){
  fill(0,255,255);
  triangle(150+x3,300+y3,300+x3,150+y3,300+x3,300+y3);
}
void movercuartoTriangulo(){
  fill(0,255,255);
  triangle(150+x3,300+y3,300+x3,150+y3,300+x3,300+y3);
  circle(250+x3,250+y3,20);
  if(keyPressed && key == CODED){
    if(keyCode == LEFT){
      x3 = x3 - 5;
    }
    else if(keyCode == RIGHT){
      x3 = x3 + 5;
    }
    else if(keyCode == UP){
      y3 = y3 - 5;
    }
    else if(keyCode == DOWN){
      y3 = y3 + 5;
    }
    if ((x3+150)<0){
      x3 = x3 + 5;
    }
    if ((x3+300)>width){
      x3 = x3 - 5;
    }
    if ((y3+150)<0){
      y3 = y3 + 5;
    }
    if ((y3+300)>height){
      y3 = y3 - 5;
    }
  }
}

void quintoTriangulo(){
  fill(255,0,255);
  triangle(75+x4,225+y4,150+x4,150+y4,225+x4,225+y4);
}
void moverquintoTriangulo(){
  fill(255,0,255);
  triangle(75+x4,225+y4,150+x4,150+y4,225+x4,225+y4);
  circle(150+x4,190+y4,20);
  if(keyPressed && key == CODED){
    if(keyCode == LEFT){
      x4 = x4 - 5;
    }
    else if(keyCode == RIGHT){
      x4 = x4 + 5;
    }
    else if(keyCode == UP){
      y4 = y4 - 5;
    }
    else if(keyCode == DOWN){
      y4 = y4 + 5;
    }
    if ((x4+75)<0){
      x4 = x4 + 5;
    }
    if ((x4+225)>width){
      x4 = x4 - 5;
    }
    if ((y4+150)<0){
      y4 = y4 + 5;
    }
    if ((y4+225)>height){
      y4 = y4 - 5;
    }
  }
}

void cuadrado(){
  if( d == 0 ){
    fill(0,0,255);
    quad(x5+150,y5+150,225+x5,75+y5,300+x5,150+y5,225+x5,225+y5);
  }
  else
    rotarCuadrado();
}

void moverCuadrado(){
  if(keyPressed && key == CODED){
    if(keyCode == LEFT){
      translate(x5-5,y5);
      x5 = x5-5;
    }
    if(keyCode == RIGHT){
      translate(x5+5,y5);
      x5 = x5 + 5;
    }
    else if(keyCode == UP){
      translate(x5,y5-5);
      y5 = y5 - 5;
    }
    else if(keyCode == DOWN){
      translate(x5,y5+5);
      y5 = y5 + 5;
    }
    
    if (angle != 0){
      if ((x5+150)<0)
        x5 = x5 + 5;
      if ((x5+300)>width)
        x5 = x5 - 5;
      if ((y5+75)<0)
        y5 = y5 + 5;
      if ((y5+225)>height)
      y5 = y5 - 5;
    }
    else{
      if((x5+150)<0)
        x5 = x5+5;
      if((x5+255>width))
        x5 = x5 -5;
      if((y5+150)<0)
        y5= y5 +5;
      if((y5+255)>height)
        y5 = y5 -5 ;
    }
  }
}
void rotarCuadrado(){
  float b = sq(150-225);
  float c = sq(150-75);
  float a = sqrt(b+c);
  fill(0,0,255);
  pushMatrix();
  translate(x5+150,y5+150);
  rotate(angle);
  rect(0,0,a,a);
  popMatrix();
}
  

void paralelogramo(){
  fill(227,66,52);
  quad(0+x6,300+y6,75+x6,225+y6,225+x6,225+y6,150+x6,300+y6);
}
void moverParalelogramo(){
  fill(227,66,52);
  quad(0+x6,300+y6,75+x6,225+y6,225+x6,225+y6,150+x6,300+y6);
  circle(112+x6,262+y6,20);
  if(keyPressed && key == CODED){
    if(keyCode == LEFT){
      x6 = x6 - 5;
    }
    else if(keyCode == RIGHT){
      x6 = x6 + 5;
    }
    else if(keyCode == UP){
      y6 = y6 - 5;
    }
    else if(keyCode == DOWN){
      y6 = y6 + 5;
    }
    if ((x6)<0){
      x6 = x6 + 5;
    }
    if ((x6+225)>width){
      x6 = x6 - 5;
    }
    if ((y6+225)<0){
      y6 = y6 + 5;
    }
    if ((y6+300)>height){
      y6 = y6 - 5;
    }
  }
}

///Seleccion de Figura para movimiento
int seleccionFiguras(){
  if( keyPressed && key == '0'){
    a =false; b= true; c= true;
    if(a == false && b == true && c == true){
      d = 0;
    }
  }
  else if( keyPressed && key == '1'){
    a = true; b = true; c = true;
    if ( a && b && c){
      d = 1;
    }
  }
  else if( keyPressed && key == '2'){
    a = true; b= true; c= false;
    if (a == true && b == true && c == false){
      d = 2;
    }
  }
  else if( keyPressed && key == '3'){
    a = true; b= false; c= false;
    if (a == true && b == false && c == false){
      d = 3;
    }
  }
  else if( keyPressed && key == '4'){
    a = false; b= false; c= false;
    if (a == false && b == false && c == false){
      d = 4;
    }
  }
  else if( keyPressed && key == '5'){
    a = false; b= false; c= true;
    if (a == false && b == false && c == true){
      d = 5;
    }
  }
  else if( keyPressed && key == '6'){
    a = false; b= true; c= false;
    if (a == false && b == true && c == false){
      d = 6;
    }
  }
  else if( keyPressed && key == '7'){
    a = true; b= false; c= true;
    if (a == true && b == false && c == true){
      d = 7;
    }
  }
  return d;
}

void keyPressed(){
  if ( d==1){
     if(keyPressed && key == 'q')
        tAngle = tAngle -(PI/4);
    if(keyPressed && key == 'e')
        tAngle = tAngle +(PI/4);
  }
    
  if ( d==6){
    if(keyPressed && key == 'q' && (angle>=0))
        angle = angle -(PI/4);
    if(keyPressed && key == 'e' && (angle <0))
        angle = angle +(PI/4);
  }
}
    
    
  


    
