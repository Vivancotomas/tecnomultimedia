//Vivanco Cresto Tomas Joaquin
// tp1 Comision1

int segundos;

int posY0;
int posX1;
int posY2;
int posX3;


PImage imagen;
PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage flecha;

int tamtexto;

PFont  fuente;

boolean pant0comp;
boolean pant1comp;
boolean pant2comp;
boolean pant3comp;

float  rojo1, verde1, azul1;
float  rojo2, verde2, azul2;
float  rojo3, verde3, azul3;
float  rojo4, verde4, azul4;

void setup() {
  size(640, 480);
  textSize(32);

  posY0=520 ;
  posX1=640;
  posY2=-50;
  posX3 = width/8;


  imagen= loadImage("imagen.jpg");
  imagen1= loadImage("imagen1.jpg");
  imagen2= loadImage("imagen2.jpg");
  imagen3= loadImage("imagen3.jpg");
  flecha= loadImage("flecha.jpg");

  tamtexto= 0;

  fuente= loadFont("MVBoli-48.vlw");
  textFont(fuente, 30);

  pant0comp =false;
  pant1comp= false;
  pant2comp =false;
  pant3comp = false;



  rojo1 = random(150, 255);
  verde1 = random(150, 255);
  azul1 = random(150, 255);


  rojo2 = random(150, 255);
  verde2 = random(150, 255);
  azul2 = random(150, 255);


  rojo3 = random(150, 255);
  verde3 = random(150, 255);
  azul3 = random(150, 255);


  rojo4 = random(150, 255);
  verde4 = random(150, 255);
  azul4 = random(150, 255);
}


void draw() {
  background(255);


  //TENGA PIEDAD CON ESTO PROFE
  if (segundos>=6) {
    pant0comp= true;
    fill(rojo1, verde1, azul1);
  }
  if (segundos>=15) {
    fill(rojo2, verde2, azul2);
    pant1comp= true;
  }
  if (segundos>=25) {
    pant2comp= true;
    fill(rojo3, verde3, azul3);
  }
  if (segundos>=30) {
    pant3comp= true;
  }
  if (segundos==0) {

    pant0comp= false;
    pant1comp= false;
    pant2comp= false;
    pant3comp= false;
  }



  //primer pantalla
  if (segundos<5) {
    image(imagen, 0, 0, width, height);
  }

  //segunda pantalla
  if (segundos>=5 && segundos<15) {
    image(imagen1, 0, 0, width, height);
  }
  //tercer pantalla
  if (segundos>=15 && segundos<25) {
    image(imagen2, 0, 0, width, height);
  }
  //cuarta pantalla
  if (segundos>=25 && segundos<=30) {
    image(imagen3, 0, 0, width, height);
  }


  //texto pantalla 0

  text("LAS TONINAS!!", width/3.3, posY0);
  if (segundos == 0) {
    posY0= 520;// revisar
  }
  if (posY0>-height && pant0comp== false) {
    posY0 --;
    posY0 --;
    fill(rojo4, verde4, azul4);
  }
  //texto pantalla 1

  text("Las Toninas es una de las ciudades \n de la provincia de Buenos Aires \n mas elegida para veranear  ", posX1, height/2);
  if (pant0comp== false) {
    posX1=800;
  }
  if (posX1>-width && pant0comp== true) {
    posX1  --;
    posX1--;
  }
  //texto pantalla 2
  text("La gente viene por nuestras bellísimas \n y paradisíacas playas ", width/18, posY2);
  if (pant1comp== false) {
    posY2= -50;
  }
  if (posY2>-height/2 && pant1comp== true) {
    posY2 ++;
  }

  //textto pantalla 3
  if (segundos==0) {
    tamtexto = 0;
  }
  if (pant2comp == true && pant3comp == false) {

    textSize(tamtexto);
    text("Y luego deciden pasear y recorrer \n nuestro hermoso centro \n lleno de actividades  ", posX3, height/2);

    if (tamtexto<32) {
      tamtexto++;
    }
  }

  //pantalla final
  if (pant3comp== true) {
    background(0);
    fill(255);
    textSize(32);
    text("FIN", 300, height/2);

    //boton
    rect(450, 380, 100, 40);
    image(flecha, 450, 380, 100, 40);
  }

  // segundos

  if ( frameCount %60==0) {
    segundos++;
    println(segundos);
  }
}

//Funcionalidad boton
void mousePressed() {

  if (pant3comp== true) {
    if (mouseX>450 && mouseX<550 && mouseY>380 && mouseY<420) {
      segundos=0;
    }
  }
}
