void ellipsesnegras() {
for (int a = 0; a < cant; a++) {
    for (int b = 0; b< cant; b++) {
      push();
      translate(a * espacio + 1, b * espacio + 1);
      rotate(mouseX* 0.01);
      ellipseMode(CENTER);
      ellipse(posX, posY, 15, 9);
      pop();
      fill(0);
      noStroke();
    }
  }
}
