//Dello Russo Lucas, Comisión
//tp0 Comisión 1

//seteo de las referencias
PImage paisaje;
size (800, 400);
paisaje = loadImage("paisaje.jpg");

//construcción de la imagen
background(27, 60, 142);

//montañas
noStroke();
fill(250);
triangle(350, 200, 600, 200, 505, 50);
fill(235);
triangle(400, 200, 750, 200, 605, 50);
fill(200);
quad(525,200, 700,125, 900,130, 800,800);

//pasto
fill(219, 188, 75);
rect(400, 180, 400, 300);

//flores bajo montaña
fill(192, 75, 219);
rect(400,180, 400,03);

//arbol
fill(0);
rect(500,180, 02,-20);
fill(192, 75, 219);
ellipse(502, 135, 50, 50);

//flores medio
fill(0);
rect(500,300, 02,-20);
fill(192, 75, 219);
ellipse(502, 270, 25, 25);
fill(0);
rect(520,300, 02,-20);
fill(192, 75, 219);
ellipse(522, 270, 25, 25);
fill(0);
rect(540,300, 02,-20);
fill(192, 75, 219);
ellipse(542, 270, 25, 25);
fill(0);
rect(560,300, 02,-20);
fill(192, 75, 219);
ellipse(562, 270, 25, 25);
fill(0);
rect(580,300, 02,-20);
fill(192, 75, 219);
ellipse(582, 270, 25, 25);

//flores inferior
fill(0);
rect(500,400, 02,-20);
fill(192, 75, 219);
ellipse(502, 370, 25, 25);
fill(0);
rect(520,400, 02,-20);
fill(192, 75, 219);
ellipse(522, 370, 25, 25);
fill(0);
rect(540,400, 02,-20);
fill(192, 75, 219);
ellipse(542, 370, 25, 25);
fill(0);
rect(720,400, 02,-20);
fill(192, 75, 219);
ellipse(722, 370, 25, 25);
fill(0);
rect(790,400, 02,-20);
fill(192, 75, 219);
ellipse(792, 370, 25, 25);
fill(0);
rect(790,350, 02,-20);
fill(192, 75, 219);
ellipse(792, 320, 25, 25);

//Referencia
image(paisaje, 0, 0, 400, 400);
