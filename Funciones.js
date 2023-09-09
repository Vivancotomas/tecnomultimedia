function boton(x1, x2, y1, y2) {
  if (mouseX>x1 && mouseX<x2 && mouseY >y1 && mouseY<y2) {
    return true
  }
}


function card(texto,x, y, anc, alt) {
 push()
  stroke(255)
  fill(0)
  rect(x, y, anc, alt)
  pop()
    
    fill(55, 200, 55)
    text(texto, x+40, y+45)
    textSize(20)
}




function impacto(bx, by, d, x, y, ptam) {//revisa que la bala golpee asteroide

  let distan = dist(bx, by, x, y)

    if ( distan<d/2+ptam/2) {
    return true
  } else {
    return false
  }
}
