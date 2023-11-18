// Tomas Vivanco Cresto
//https://youtu.be/Q9p9g1K4xu8

let objuego

  function setup() {
  createCanvas(800, 400)
    objuego= new juego()
    
}


function draw() {
  
 
background(5, 150, 255)


    fill(255, 140, 0)
    rect(0,350,800,50)

    objuego.dibujar()
}


function keyPressed() {
  objuego.teclapres(keyCode)
}
