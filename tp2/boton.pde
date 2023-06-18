

boolean boton() {

  float mouse = dist(mouseX,mouseY,400,340);
  int  radio= 50/2;

ellipseMode(CENTER);
 circle(400,340,50);
 fill(0);
  if (mouse<radio) {
    return true;
  } else {
    return false;
  }
}
