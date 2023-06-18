//Vivanco Cresto Tomas
//94768/0
//  https://youtu.be/zyP4k51jj48

int cant;
float espacio;

int posX;
int posY;



PImage ilusion;


float colorR;
float colorG;
float colorB;


void setup() {
  size(800, 400);

  ilusion=loadImage("ilusion.jpg");

  colorR= 216;
  colorG= 70;
  colorB= 200;


  cant = 40;
  espacio = (width/cant);
}
void draw() {

  background(53, 157, 30);


  ellipsesnegras();
  ellipsesblancas();
  ellipses();


  fill(53, 157, 30);
  rect(532, 150, 118, 120);

  image(ilusion, 0, 0, 400, 400);
  boton();
  texto();
  textSize(20);
  fill(colorR, colorG, colorB);
  text("VOY \n A \n APROBAR", 540, 190);
}



void mousePressed() {



  if (boton() == true) {
    colorR= 216;
    colorG= 70;
    colorB= 200;
  } else {
    colorR=random(0, 255);
    colorG=random(0, 255);
    colorB=random(0, 255);
  }
}
