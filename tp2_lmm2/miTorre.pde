
class miTorre{
  PGraphics monedas;

    int ycmi=550;
    int micont=0;
    int contDeMonedas=1;
      boolean conteo=true;
      boolean dibujarTorre=true;
      int dibujarPerder=1;
 boolean reiniciar;
miTorre (){
  //background(0, 155, 59);
    t2 = new torre2();
    t1 = new torre1();
ellipse(400,ycmi, 50,50);

 monedas = createGraphics(200, height);
}
void dibujar(){
  if(dist(400,ycmi,mouseX,mouseY)<25){
      agarrar.stop();
 fill (254, 165, 0);
  ellipse(400,ycmi, 50,50);
  ycmi-=10;
  micont++;
  }
}


void sabotiar(){


    if(mouseX>180&&mouseX<220 ){
      int sabotiarTorre1= t1.dibujar();
 agarrar.play();
      for(int i = 0; i < sabotiarTorre1 ; i += 1){
  fill(194,194,198);
  ellipse(400,ycmi, 50,50);
  ycmi-=10;

      }



  } 
 
  else if(mouseX>580&&mouseX<620){
    int sabotiarTorre2= t2.dibujar();
    agarrar.play();
      for(int i = 0; i < sabotiarTorre2 ; i += 1){
   fill(192, 101, 31);
  ellipse(400,ycmi, 50,50);
  ycmi-=10;
 
      }
   
  } 

}
boolean ganar(){

if(ycmi<11 ){
  ganar.play();
  caerTorres=true;
conteo=false;

}
  else {
     caerTorres=false;}
     
return caerTorres;


}
boolean perder(){
 boolean perderTorre1= t1.perder(); 
  boolean perderTorre2= t2.perder(); 
if( perderTorre2==true ||  perderTorre1==true){
  println("llegue");
perder.play();
  stop=true;
if (dibujarPerder==1){
  fill(39,24,79);
  noStroke();
  rect(350,0,150,height);
      stroke(0);
 
 for(int i = 0; i < contador1 ; i += 1){
  fill (254, 165, 0);
  ellipse(random(390,430),500+i*5, 50,50);
  dibujarPerder=2;

 }
      }
perderTorre1=false;
perderTorre2=false;
}
return stop;
}
void reiniciar(){
    boolean reiniciar= g.reiniciarg();
if(reiniciar==true){
 
    println("reiniciando");
  stop=false;
   ycmi=550;
    micont=0;
  contDeMonedas=1;
     conteo=true;
  dibujarTorre=true;
    dibujarPerder=1;
  ellipse(400,ycmi, 50,50);
}
     reiniciar=false;
}}
