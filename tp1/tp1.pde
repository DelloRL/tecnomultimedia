//Dello Russo Lucas, 90746/5
//tp1 Comisión 1

int diametro;
boolean presentacion;
String pantalla;
int cuenta;
int pos, opa1, opa2, opa3;
PImage bigBen;
PImage londonEye;
PImage palacioBuckingham;

void setup() {    //Configuracion
  size(640, 480);
  pantalla = "inicio";
  bigBen = loadImage("bigBen.jpg");
  londonEye = loadImage("londonEye.png");
  palacioBuckingham = loadImage("palacioBuckingham.jpg");
  cuenta = 0;
  pos= 480;
  opa1= 0;
  opa2= 0;
  opa3= 0;
  textSize(20);
  diametro = 100;
  presentacion = false;
}


void draw() {
  background(0); //fondo
  float distancia = dist(mouseX, mouseY, 320, 240);
  if (distancia< diametro/2) {
    fill(195, 195, 195);
  } else {
    fill(129, 129, 129);
  }

  //Boton Inicio
  rectMode(CENTER);
  rect(320, 240, 100, 70);
  fill(0);
  text("¡Iniciar!", 289, 248);

  if (presentacion==true) { //si presentacion es true, mostrar.
    background(255);
    fill(255, 255, 255);
    if (cuenta <= 1350) {
      cuenta++;
    }
    if (pantalla.equals("Lugar 1")) {
      image(palacioBuckingham, 0, 0, 640, 480);
      fill(0, 0, 0, opa1++);
      text("PALACIO DE BUCKINGHAM", width/2, pos);
      pos--;
    } else if (pantalla.equals("Lugar 2")) { 
      image(bigBen, 0, 0, 640, 480);
      fill(0, 0, 0, opa2++);
      pos++;
      if (pos >= 250) {
        fill(255, 0, 0);
      }
      text("BIG BEN", pos, width/2);
    } else if (pantalla.equals("Lugar 3")) {
      image(londonEye, 0, 0, 640, 480);
      fill(255, 0, 0, opa3++);
      if (opa3 >= 150) {
        fill(255, 255, 255);
      }
      text("El ojo de Londres", width/2, 100);
    }


    fill(255, 255, 255);
    if (cuenta <180) {
      textAlign(CENTER);
      textSize(50);
      pantalla = "Lugar 1";
    } else if (cuenta >=500 && cuenta < 950) {
      textAlign(CORNER);
      textSize(50);
      pantalla = "Lugar 2";
    } else if (cuenta >=1100 && cuenta < 1150) {
      textAlign(CENTER);
      textSize(50);
      pantalla = "Lugar 3";
    } else if (cuenta >=1350) {
      textSize(15);
      presentacion = false;
      cuenta = 0;
    }

    text(pantalla, 150, 400);
  }
}


void mousePressed() {
  float distancia = dist(mouseX, mouseY, 320, 240);
  if (presentacion==false && distancia< diametro/2) {
    presentacion = true;
  }
}
