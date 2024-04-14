float x1 = 100; // Posición inicial de Link en x
float y1 = 100; // Posición inicial de Link en y
float x2 = 200; // Posición del tesoro en x
float y2 = 400; // Posición del tesoro en y
float distanciaTesoro = 50;

void setup() {
  size(800, 600);
}

void draw() {
  background(135, 206, 250); // Fondo azul claro
  
  // Calcular el tamaño de los catetos de Link
  float coordenadaX = x2 - x1;
  float coordenadaY = y2 - y1;
  
  // Calcular la distancia entre Link y el tesoro
  float distancia = sqrt(pow(coordenadaX, 2) + pow(coordenadaY, 2));
  String textoDistancia = "La distancia es de: " + distancia;
  println(textoDistancia);
  
  // Mostrar mensaje "¡Power-Up!" si Link está cerca del tesoro
  if (distancia <= distanciaTesoro) {
    println("¡Power-Up!");
  }
  
  // Dibujar el tesoro como un cuadrado
  fill(255, 215, 0);
  rectMode(CENTER);
  rect(x2, y2, 40, 40);
  
  // Dibujar Link como un círculo
  fill(0, 191, 255);
  ellipse(x1, y1, 30, 30); 
  
  // Mostrar las coordenadas del mouse en la pantalla
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
