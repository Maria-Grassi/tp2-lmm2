class ganar{
  int sumary=1;
  int contg=1;
  PImage juegoGanar;
  boolean reiniciar;
ganar(){
        
}
void ganarMI(){
   boolean ganarMiTorre= mit.ganar(); 
if(ganarMiTorre==true && contg<100){

fill(255, 255, 0);
sumary+=5;
juegoGanar=loadImage("juego.png");
image(juegoGanar,0,0,width, height);
for(int i = 1; i < 17 ; i += 1){
ellipse(random(0,800),sumary/i,24,24);
}
  contg++;
    println("reiniciando" + contg);}

}
void perderMi(){
boolean perderMiTorre= mit.perder();
if(perderMiTorre==true){
 contg++;}}


boolean reiniciarg(){

  if(contg==200){
ganar.stop();
perder.stop();
  reiniciar=true;


}
  else{
   reiniciar=false;};
     return reiniciar;
     
}
}
