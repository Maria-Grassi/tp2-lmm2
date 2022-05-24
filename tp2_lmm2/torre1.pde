class torre1{
    int yc1=500;
    int cont1=0;
int dibujar=1;
boolean dibujartorre=true;
boolean caerTorre;
torre1 (){

}
int  dibujar(){
  if(frameCount%10==0 && dibujartorre==true && stop==false){
      stroke(0);
 fill(194,194,198);
  ellipse(200,yc1, 50,50);
  yc1-=10;
  cont1++;
   contador1=cont1;
  }

  return contador1;

}
 void borrar(){
     println( "contador 1 " + cont1);
   noStroke();
     fill(39, 24, 79);
rect(170,0,70,600);
  yc1=550;
     cont1=0;
  }

void gane(){
         boolean ganarMiTorre= mit.ganar(); 
if(ganarMiTorre==true){
if (dibujar==1){
  fill(39, 24, 79);
  noStroke();
  rect(150,0,150,height);
      stroke(0);
 fill(194,194,198);
 for(int i = 0; i < contador1 ; i += 1){
fill(194,194,198);
  ellipse(random(190,230),500+i*5, 50,50);
  dibujar=2;
  dibujartorre=false;
    save("juego.png");
 }
      }
ganarMiTorre=false;
}}
 boolean perder(){
 
if(yc1==10 ){
  println("perdi 2");
  caerTorre=true;
 // dibujartorres=false;
}
  else {
     caerTorre=false;}
     
return caerTorre;


}
void reiniciar(){
    boolean reiniciar= g.reiniciarg();
if(reiniciar==true){
    yc1=550;
    cont1=0;
dibujar=1;
dibujartorre=true;
 caerTorre=false;
reiniciar=false;
stop=false;
  ellipse(200,yc1, 50,50);
}}}
