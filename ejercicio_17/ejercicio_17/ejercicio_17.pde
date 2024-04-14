float x1 = 100; 
float y1 = 100; 
float x2 = 200; 
float y2 = 400;
float distanciaTesoro = 50;

void setup() {
  size(800, 600);
}

void draw() {
  background(135, 206, 250); 
  
 
  float coordenadaX = x2 - x1;
  float coordenadaY = y2 - y1;
  

  float distancia = sqrt(pow(coordenadaX, 2) + pow(coordenadaY, 2));
  String textoDistancia = "La distancia es de: " + distancia;
  println(textoDistancia);
  

  if (distancia <= distanciaTesoro) {
    println("¡Power-Up!");
  }
  

  fill(255, 215, 0);
  rectMode(CENTER);
  rect(x2, y2, 40, 40);
  

  fill(0, 191, 255);
  ellipse(x1, y1, 30, 30); 
  

  String coordenadas = "X1: " + mouseX + ", Y1: " + mouseY;
  fill(0);
  textSize(20);
  textAlign(RIGHT, TOP);
  text(coordenadas, width, 0);
}

void mouseMoved() {
 
  x1 = mouseX;
  y1 = mouseY;
}
