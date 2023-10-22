// Tomas Vivanco Cresto
//https://youtu.be/Q9p9g1K4xu8

let objuego

  function setup() {
  createCanvas(800, 400)
    objuego= new juego(3)
}


function draw() {
  background(255,140,0)
  fill(5,150,255)
  rect(0,0,800,350)
  
    objuego.dibujar()
}


function keyPressed() {
  objuego.teclapres(keyCode)
}
