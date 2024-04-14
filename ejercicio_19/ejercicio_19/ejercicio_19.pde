float lineaY;
float velocidadY = 1;
boolean direccionAbajo = true;

void setup() {
  size(400, 400);
  lineaY = height / 2; 
}

void draw() {
  if (direccionAbajo) {
    lineaY += velocidadY;
  } else {
    lineaY -= velocidadY;
  }
  

  background(0);
  stroke(255);
  line(0, lineaY, width, lineaY);
  

  float elipseX = width / 2;
  float elipseY;
  if (direccionAbajo) {
    elipseY = lineaY + 40;
  } else {
    elipseY = lineaY - 40;
  }
  ellipse(elipseX, elipseY, 80, 80);
  

  if (lineaY >= height || lineaY <= 0) {
    direccionAbajo = !direccionAbajo;
  }
}
