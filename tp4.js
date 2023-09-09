//Vivanco Cresto Tomas
//https://youtu.be/kzvtcch_niw

let tiempo=15
  let x, y, bx, by// posicion ca;on y bala
  let ang, dire //angulo de disparo y direccion de la bala
  let velo=10// velocidad bala
  let disparada=false// estado de la bala
  let ast= 15// cantidad asteroides
  let diam= 40// asteroides
  let puntos=0
  let impactado= []
  let pantallas=[]
  let ubi= []  // arreglo de elipses


  function setup() {
  createCanvas(800, 600)
    x= width/2
    y= height/2
    ang=0
    bx=x
    by=y
    pantallas[0]= true
    pantallas[1]= false
    pantallas[2]= false
    pantallas[3]= false


    for (let i= 0; i<ast; i++) {// ubica asteroides
    ubi[i]=[]
      ubi[i][0] = random(width) // eje x asteroides
      ubi[i][1]= random(height)// eje y asteroides
      impactado[i] = false;
  }
}


function draw() {
  background(0)

    push()
    translate(x, y)
    ang= atan2(mouseY-y, mouseX- x)// dibuja gira canon
    rotate(ang)
    fill(0, 0, 255)
    rectMode(CENTER)
    rect(0, 0, 100, 30)
    pop()

    line(mouseX, mouseY, x, y)//mira

    if (disparada) {//disparabala
    bx=bx + cos(dire) *velo
      by=by+ sin(dire)  *velo
  }
  fill(255, 220, 90)
    ellipse(bx, by, diam/2)



    if (bx>width||bx<0||by>height||by<0) {// recarga la bala
    bx=x
      by=y
      disparada=false
  }



  for ( let i =0; i<ast; i++) { //dibuja ellipses
    fill(255)
      ellipse(ubi[i][0], ubi[i][1], diam)

      if (pantallas[2]==true) {
      if (impacto(bx, by, diam/2, ubi[i][0], ubi[i][1], diam)&& !impactado[i]) { // revisa impacto de bala con asteroides, reinicia bala, descuenta el asteroide y suma puntos 
        bx=x
          by=y
          disparada=false
          ubi[i][1] = width+diam;
        impactado[i] = true;
        puntos++
          if (pantallas[2]== true) {// efecto explosion 
          background(255, 0, 0)
        }
      }
    }
  }



  if (pantallas[0]==true) { // reinicia variables necesarias y reasigna asteroides para jugar otra vez 
    pantallas[1]= false
      pantallas[2]= false
      pantallas[3]= false
      pantallas[4]= false

      tiempo=15
      puntos=0

      for (let i= 0; i<ast; i++) {// ubica asteroides
      ubi[i]=[]
        ubi[i][0] = random(width) // eje x asteroides
        ubi[i][1]= random(height)// eje y asteroides
        impactado[i] = false;
    }
    card("ASTEROIDS", 300, 100, 200, 80)
      card("Iniciar parida", 300, 260, 200, 80)
      card("Créditos", 300, 460, 200, 80)
      card("Reglas: \n destruye los asteroides \n antes  de que \n se acaba\e el tiempo", 20, 100, 255, 150)
  }



  if (pantallas[1]==true) {
    card("Developer \nTomás Vivanco", 80, 120, 200, 80)
      card("Designer \nTomás Vivanco", 80, 290, 200, 80)
      card("Story \nTomás Vivanco", 80, 440, 200, 80)
      card("Volver a inicio", 550, 440, 200, 80)
  }



  if ( pantallas[2]==true) {// tiempo de juego 
    if ( frameCount % 60==0) {
      tiempo--;
    }
    fill(55, 200, 55)
      text("Puntaje:", 50, 500)
      text(puntos, 140, 500)
      fill(255, 0, 0)
      text("Tiempo restante:", 50, 550)
      text(tiempo, 240, 550)
  }



  if (pantallas[3]==true) {
    fill(69, 255, 69)
      text("GANASTE", width/2, height/4)
      card("Volver a inicio", 550, 440, 200, 80)
  }

  if (puntos==ast && pantallas[4]==false) {
    pantallas[3]= true
      pantallas[2]=false
  }


  if (pantallas[4]==true) {
    fill(255, 0, 0)
      text("GAME OVER", width/2, height/4)
      card("Volver a inicio", 550, 440, 200, 80)
  }
  if (tiempo==0 && puntos<ast && pantallas[2]==true) {
    pantallas[4]=true
      pantallas[2]=false
  }
}



function mousePressed() { 



  if (pantallas[0]==true && boton(300, 500, 260, 340)) { //cambia pantallas
    pantallas[2]=true
      pantallas[0]=false
  } else if (pantallas[0]==true && boton(300, 500, 460, 540)) {
    pantallas[1]=true
      pantallas[0]=false
  } else if (pantallas[1]==true && boton(550, 750, 440, 520)) {
    pantallas[0]=true
  } else if (pantallas[2]==true) {//dispara y cambia ang por direccion
    if (disparada==false) {
      disparada= true
        dire=ang 
    }
  } else if (pantallas[3]==true && boton(550, 750, 440, 520)) {
    pantallas[0]=true
  } else if (pantallas[4]==true && boton(550, 750, 440, 520)) {
    pantallas[0]=true
  }
}
