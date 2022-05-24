
import processing.sound.*;
SoundFile agarrar, perder, ganar;
torre2 t2;
torre1 t1;
miTorre mit;
ganar g;
int contador1, contador2,micont;
boolean caerTorres;
  boolean reiniciar;
boolean stop=false;
void setup(){
  size( 800 , 600 );  

  background(39, 24, 79);
  agarrar = new SoundFile(this, "agarrar.mp3");
  perder = new SoundFile(this, "perder.mp3");
  ganar = new SoundFile(this, "ganar.mp3");
  t2 = new torre2();
    t1 = new torre1();
        mit = new miTorre();
        g= new ganar();
}

void draw(){
  mit.ganar();
  mit.perder();
t1.dibujar();
t2.dibujar();
t1.gane();
t2.gane();
g.ganarMI();
g.reiniciarg();
g.perderMi();
t1.perder();
t2.perder();
t1.reiniciar();
t2.reiniciar();
mit.reiniciar();
if(g.reiniciarg()){
    setup();
  }

}
void mousePressed(){
  t1.dibujar();
t2.dibujar();
  if(mouseX>180&&mouseX<220){
      mit.sabotiar();
   t1.borrar();
   

  }
  else if(mouseX>580&&mouseX<620){
     mit.sabotiar();
    t2.borrar(); 


   
  }
    else if(mouseX>380&&mouseX<420){
   mit.dibujar(); 
   mit.ganar();

   
  }
}
