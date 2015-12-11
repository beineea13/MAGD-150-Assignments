int posX = (height/2);
int posY = (height/2);
int movementSize = 5;
float gravity = 0.7; 
int pressedState=0;
int pressed=0;
  
void setup(){
  size(1000,800);
  ellipseMode(CENTER);
  fill(242,168,29);
  ellipse(posX,400,100,100);
  ellipse(500,posY,100,100);
}
  


void draw(){
  if (pressedState==1){
    background(250);
  } else {
  background(25);
  println(posX);
  println(posY);


  ballUpdate();
}


  if(posX+25 >= width){
    movementSize = movementSize * -1;
  } else if (posX-25 <= 0){
    movementSize = movementSize * -1;
  }
  posX = posX + movementSize;
  ellipse(posX,400,200,200);
}

void ballUpdate(){
  if(posY+25 >= height){
    movementSize = movementSize * -1;
  } else if (posY-25 <= 0){
    movementSize = movementSize * -1;
  }
  posY = posY + movementSize;
  ellipse(500,posY,200,200);
}

void mousePressed(){
  pressed=pressed+1;
  pressedState=(pressed%2);
}

void keyPressed(){
  fill(34,157,24);
  ellipse(posX,400,100,100);
  fill(193,80,39);
  ellipse(500,posY,100,100);
}
