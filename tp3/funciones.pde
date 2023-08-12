boolean boton(int x1, int x2, int y1, int y2, int proxpan) {

  for (int i=0; i<13; i++) {
    arreglopan[i]=1;
    arreglopan[proxpan]=0;
  }
  return (mouseX>x1 && mouseX<x2 && mouseY >y1 && mouseY<y2);
}

boolean opcion ( int x1, int x2, int y1, int y2) {

  return(mouseX>x1 && mouseX< x2 && mouseY> y1 && mouseY<y2);
}


boolean funreiniciar(int x1, int x2, int y1, int y2) {

  return(mouseX>x1 && mouseX< x2 && mouseY> y1 && mouseY<y2);
}

void opciones(int x, int y, int ancho, int alto, color relleno) {
  fill(relleno);//255, 0, 0
  rect(x, y, ancho, alto);
}



void continuar(int x, int y, int ancho, int alto) {
  fill(255);
  rect(x, y, ancho, alto);
  fill(0);
  textSize(20);
  text("Continuar", 457, 530);
}

void reiniciar(int x, int y, int ancho, int alto) {

  fill(0);
  rect(x, y, ancho, alto);
  fill(255);
  textSize(20);
  text("Reiniciar", 465, 480);
}
void texto(String textpan, int x, int y, int espaciox, int espacioy, int tamtext, int col) {
  fill(col);
  textSize(tamtext);
  text(textpan, x, y, espaciox, espacioy);
}
