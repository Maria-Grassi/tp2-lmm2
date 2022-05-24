class torre2{
   int yc2=500;
  int cont2=0;
int dibujar=1;
boolean dibujartorre=true;

boolean caerTorre;
torre2 (){

}
int dibujar(){
  
  if(frameCount%10==0 && dibujartorre==true && stop==false){
    stroke(0);
    fill(192, 101, 31);   
  ellipse(600,yc2, 50,50);
 cont2++;
  yc2-=10;
  contador2=cont2;

  }
 
    return contador2;
}
 void borrar(){
     println( "contador 2 " + cont2);
   noStroke();
    fill(39, 24, 79);
rect(570,0,70,600);
  yc2=550;
  cont2=0;
  }



void gane(){
         boolean ganarMiTorre= mit.ganar(); 
if(ganarMiTorre==true){
if (dibujar==1){
  fill(39, 24, 79);
  noStroke();
  rect(550,0,150,height);
      stroke(0);
 fill(192, 101, 31);
 for(int i = 0; i < contador1 ; i += 1){
   fill(192, 101, 31);
  ellipse(random(590,630),500+i*5, 50,50);
  dibujar=2;
  dibujartorre=false;
  save("juego.png");
 }
}
}}
boolean perder(){
if(yc2==10 ){
  println("perdi 2");
  caerTorre=true;
  //  dibujartorre=false;
}
  else {
     caerTorre=false;}
     
return caerTorre;
}
void reiniciar(){
    boolean reiniciar= g.reiniciarg();
if(reiniciar==true){
     yc2=550;
 cont2=0;
 dibujar=1;
 dibujartorre=true;

stop=false;
  ellipse(600,yc2, 50,50);
  reiniciar=false;
}}
}
