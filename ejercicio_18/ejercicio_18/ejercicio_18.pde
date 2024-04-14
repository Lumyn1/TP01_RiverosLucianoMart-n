void setup() {
  // Toma los coeficientes de la ecuación cuadrática
  float a = 1;
  float b = -3;
  float c = 2;
  
  // Calcula el discriminante
  float discriminante = b * b - 4 * a * c;
  
  // Calcula las raíces
  if (discriminante > 0) {
  
    float x1 = (-b + sqrt(discriminante)) / (2 * a);
    float x2 = (-b - sqrt(discriminante)) / (2 * a);
    println("Las raíces son: " + x1 + " y " + x2);
  } else if (discriminante == 0) {
    // Dos raíces reales e iguales
    float x = -b / (2 * a);
    println("La raíz doble es: " + x);
  } else {
    // Raíces complejas
    println("Las raíces son complejas");
  }
}
