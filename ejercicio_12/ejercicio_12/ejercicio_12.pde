import javax.swing.JOptionPane;

String nombre;

void setup() {
  size(400, 200); 
  background(255);

  nombre = JOptionPane.showInputDialog("Por favor, ingresa tu nombre:");

  if (nombre == null || nombre.equals("")) {
    nombre = "Invitado"; 
  }
}

void draw() {
  background(255);
  textSize(24);
  textAlign(CENTER, CENTER);
  fill(0); 
  text("¡Hola, " + nombre + "!", width / 2, height / 2);
}
