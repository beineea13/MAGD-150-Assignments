int pressed=0;
int pressedState=0;

void draw(){
  size(1280,800);
  //Click
  if (pressedState==1){
    background(67,81,201);
  } else {
  background(153,153,155);
  //Game Systems
  fill(15,15,15);
  rect(200,150,200,155);
  fill(66,165,60);
  textSize(42);
  text("Xbox",240,240);
  fill(15,15,15);
  rect(50,350,200,125);
  textSize(42);
  fill(81,161,222);
  text("PS2",110,430);
  //Equal Sign
  fill(253,255,252);
  textSize(125);
  text("=",550,360);
  //Violence
  fill(196,28,30);
  textSize(100);
  text("Violence",760,360);
  }
}
void mousePressed(){
  pressed=pressed+1;
  pressedState=(pressed%2);
}
void keyPressed(){
  line(550,300,650,350);
  line(650,300,550,350);
}
