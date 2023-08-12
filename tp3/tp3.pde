//Vivanco Cresto Tomás


int [] arreglopan = new int [13]; //0,1,2,3,4,5,6,7,8,9,10,11,12
PImage[] imagenes = new PImage[13];

int pan0;
int pan1;
int pan2;
int pan3;
int pan4;
int pan5;
int pan6;
int pan7;
int pan8;
int pan9;
int pan10;
int pan11;
int pan12;
//prox pantallas

int panactual;



void setup() {

  size(600, 600);

  pan0=0;
  pan1=1;
  pan2=2;
  pan3=3;
  pan4=4;
  pan5=5;
  pan6=6;
  pan7=7;
  pan8=8;
  pan9=9;
  pan10=10;
  pan11=11;
  pan12=12;



  for (int j = 0; j < imagenes.length; j++) {
    imagenes[j] = loadImage("img" + (j + 1) + ".png");
  }
}
void draw() {

  if (arreglopan[0]==0) {
    panactual=0;
  } else if (arreglopan[1]==0) {
    panactual=1;
  } else if (arreglopan[2]==0) {
    panactual=2;
  } else if (arreglopan[3]==0) {
    panactual=3;
  } else if (arreglopan[4]==0) {
    panactual=4;
  } else if (arreglopan[5]==0) {
    panactual=5;
  } else if (arreglopan[6]==0) {
    panactual=6;
  } else if (arreglopan[7]==0) {
    panactual=7;
  } else if (arreglopan[8]==0) {
    panactual=8;
  } else if (arreglopan[9]==0) {
    panactual=9;
  } else if (arreglopan[10]==0) {
    panactual=10;
  } else if (arreglopan[11]==0) {
    panactual=11;
  } else if (arreglopan[12]==0) {
    panactual=12;
  }

 
  println("panactual=");
  println(panactual);
  println("arreglopan=");
  println(arreglopan);




  if (arreglopan[0]==0) {
    image(imagenes[panactual], 0, 0, 600, 600);
    texto("Los hombres de La Tierra", 200, 25, 300, 100, 30, 0);
    texto("Esta a punto de aterrizar en Marte la segunda expedición, a cargo del capitán Williams. ", 50, 470, 300, 100, 20, 255);
    continuar(450, 503, 100, 50); //cont
  } else if (arreglopan[1]==0) {
    image(imagenes[panactual], 0, 0, 600, 600);
    texto("La nave desciende en el planeta rojo y logra divisar una casa cercana, la tripulación planea presentarse a los residentes marcianos.", 50, 470, 300, 200, 20, 255);
    continuar(450, 503, 100, 50);//cont
  } else if (arreglopan[2]==0) {
    image(imagenes[panactual], 0, 0, 600, 600);// decision
    texto("Para sorpresa de la tripulación, la señora TTT no se vió muy interesada en su hazaña, pero les dió drecciones de hacia donde ir.", 150, 10, 350, 200, 20, 0);
    opciones(0, 530, 280, 70, color (255, 0, 0));
    texto("Ir con el señor III, el sabe tratar estos casos.", 10, 560, 350, 224, 15, 0);
    opciones(320, 530, 300, 70, color (0, 0, 255));
    texto("Ir con el señor AAA, escuchaste como gritaban su nombre en la habitacion.", 330, 540, 250, 60, 15, 0);
    opciones(150, 480, 300, 50, color (0, 255, 0));
    texto("Volver a la nave a discutir que hacer.", 180, 490, 250, 60, 15, 0);
  } else if (arreglopan[3]==0) {
    image(imagenes[panactual], 0, 0, 600, 600);
    fill(255);
    texto("La tripulación se siente decepcionada del resivimiento, no entienden a que se referia la señora TTT con casos pues es la segunda expedición.", 100, 430, 450, 100, 20, 255);
    opciones(0, 530, 280, 70, color(255, 0, 0));
    texto("La tripulación esta muy desanimada y todo parece muy extraño, volver a la tierra.", 20, 530, 240, 80, 15, 0);
    opciones(320, 530, 600, 70, color(0, 0, 255));//decision
    texto("Ir al pueblo del señor III", 325, 540, 280, 60, 15, 0);
  } else if (arreglopan[4]==0) {
    image(imagenes[panactual], 0, 0, 600, 600);
    texto("La tripulcaión volvió a la tierra y se volvieron la burla del planeta.", 50, 470, 300, 100, 20, 255);
    reiniciar(450, 450, 100, 50);//final y reinicio
  } else if (arreglopan[5]==0) {
    image(imagenes[panactual], 0, 0, 600, 600);
    texto("El señor III los atiende en su oficina, entre mover papeles y dudar de lo que le dice el capitán ignora completamente al resto de la tripulación.", 90, 30, 450, 200, 20, 0);
    continuar(450, 503, 100, 50);//continuar
  } else if (arreglopan[6]==0) {
    image(imagenes[panactual], 0, 0, 600, 600);
    texto("El señor AAA no puede creer que sean de la tierra, planea una celebración con el pueblo.", 150, 30, 350, 200, 20, 0);
    continuar(450, 503, 100, 50);//continuar
  } else if (arreglopan[7]==0) {
    image(imagenes[panactual], 0, 0, 600, 600);
    texto("Todo el pueblo se junta para celebrar la llegada de la tripulación, la tripulacion es condecorada con honores.", 100, 30, 400, 170, 25, 255);
    reiniciar(450, 450, 100, 50);//final y reinicio
  } else if (arreglopan[8]==0) {
    image(imagenes[panactual], 0, 0, 600, 600);
    continuar(450, 503, 100, 50);//continar
    texto("El señor III le da un formulario al capitán, al preguntar si el resto de la tripulación debe completarlo el Sr III estalla a carcajadas. Lo poco que entendes del formulario dice eutanasia.", 110, 370, 300, 200, 20, 255);
  } else if (arreglopan[9]==0) {
    image(imagenes[panactual], 0, 0, 600, 600);
    texto("El capitán ignora lo que leyó ya que esta muy cansado, el señor III le da la llave de una habitacion y la tripulación se dirije a descansar.", 155, 10, 400, 200, 20, 255);
    continuar(450, 503, 100, 50);
  } else if (arreglopan[10]==0) {
    image(imagenes[panactual], 0, 0, 600, 600);
    texto("Al entrar la tripulación se encuentran con personas que dicen ser de la tierra, pero mas extraño les parecen las ilusiones de fuego y columnas que hacen estos marcianos.", 120, 10, 400, 200, 20, 255);
    texto("La tripulación se da cuenta de que esto es un manicomio, el doctor III les dice que quiere ver su supuesto cohete, ya que cree que es una ilusión.", 130, 360, 400, 200, 20, 255);
    opciones(0, 530, 280, 70, color(255, 0, 0));
    texto("Sales y le muestras el cohete.", 40, 560, 240, 80, 16, 0);
    opciones(320, 530, 600, 70, color(0, 0, 255));//decision
    texto("La tripulación pierde la cordura y se queda en el manicomio.", 325, 540, 280, 60, 15, 0);
  } else if (arreglopan[11]==0) {
    image(imagenes[panactual], 0, 0, 600, 600);
    texto("La tripulación fuera de sí festeja con sus compañeros terricolas rodeados de columnas y fuego azul.", 120, 10, 400, 200, 20, 255);
    reiniciar(450, 450, 100, 50);//final y reinicio
  } else if (arreglopan[12]==0) {
    image(imagenes[panactual], 0, 0, 600, 600);
    texto("El doctor III creyó que la nave era una ilusión, asesina a la tripulación, mañana será un día caluroso.", 120, 10, 400, 200, 20, 0);
    reiniciar(450, 450, 100, 50);//final y reinicio
  }
}




void mousePressed() {
  //continuar(450,503,100,50);
  if (arreglopan[0]==0 && boton(450, 550, 503, 553, pan1)) {
  } else if (arreglopan[1]==0 && boton(450, 550, 503, 553, pan2)) {
  } else if (arreglopan[5]==0 && boton(450, 550, 503, 553, pan8)) {
  } else if (arreglopan[6]==0 && boton(450, 550, 503, 553, pan7)) {
  } else if (arreglopan[8]==0 && boton(450, 550, 503, 553, pan9)) {
  } else if (arreglopan[9]==0 && boton(450, 550, 503, 553, pan10)) {
  }


  //decisiones pantalla 2
  if (opcion(0, 280, 530, 600) && arreglopan[2]==0) {
    arreglopan[5]=0;
    arreglopan[2]=1;
  } else if (opcion(320, 600, 530, 600) && arreglopan[2]==0) {
    arreglopan[6]=0;
    arreglopan[2]=1;
  } else if (opcion(150, 450, 480, 530) && arreglopan[2]==0) {
    arreglopan[3]=0;
    arreglopan[2]=1;
  }
  //decisiones pantalla 3
  if (opcion(0, 280, 530, 600) && arreglopan[3]==0) {
    arreglopan[4]=0;
    arreglopan[3]=1;
  } else if (opcion(320, 600, 530, 600) && arreglopan[3]==0) {
    arreglopan[5]=0;
    arreglopan[3]=1;
  }

  //decisiones pantalla10
  if (opcion(0, 280, 530, 600) && arreglopan[10]==0) {
    arreglopan[12]=0;
    arreglopan[10]=1;
  } else if (opcion(320, 600, 530, 600) && arreglopan[10]==0) {
    arreglopan[11]=0;
    arreglopan[10]=1;
  }

  //reinician

  //reiniciar(450,450,100,50);
  if (funreiniciar(450, 550, 450, 500) && arreglopan[12]==0) {
    arreglopan[0]=0;
  }
  if (funreiniciar(450, 550, 450, 500) && arreglopan[11]==0) {
    arreglopan[0]=0;
  }
  if (funreiniciar(450, 550, 450, 500) && arreglopan[4]==0) {
    arreglopan[0]=0;
  }
  if (funreiniciar(450, 550, 450, 500) && arreglopan[7]==0) {
    arreglopan[0]=0;
  }
}
