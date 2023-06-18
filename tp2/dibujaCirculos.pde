

void ellipses() {


  // ellipses colores
  for (int a = 0; a < cant; a++) {
    for (int b = 0; b < cant; b++) {

      ellipseMode(CENTER);
      ellipse(a * espacio, b * espacio, 15, 8);
      fill(colorR, colorG, colorB);
      noStroke();
    }
  }
}
