//Vivanco Cresto Tomas Joaquin
//tp0 comision 1

PImage desierto;


 size(800,400);
 
background(54,99,173);
/*imagen desierto*/
desierto = loadImage("desiertoo.png");

/*montañas*/
fill(149,63,17 );
rect(400,120,50,70);
fill(237,157,69);
triangle(300,200,700,75,850,250);
 triangle(348,178,532,80,700,173);
 fill(112,80,42);
rect(720,120,200,70);
 ellipse(750,160,30,20);
  ellipse(750,150,20,10);
 ellipse(750,135,30,20);
 ellipse(780,150,30,20);
 ellipse(780,140,30,20);
 ellipse(780,164,20,10); 
 
 
/*imagen desierto2*/
 image(desierto,0,0,400,400);

 /*tierra*/
 fill(214,118,57);
 rect(400,175,400,400);
 fill(231,201,151);
 ellipse(570,380,280,50);
 
 /*panta*/
 fill(82,118,30);
 triangle(530,370,460,207,592,209);
 fill(149,63,17);
 triangle(502,301,555,301,530,370);
 fill(0,0,0);
 triangle(530,370,690,345,690,390);

 
 
 
 
 
 
 
 
 
 
