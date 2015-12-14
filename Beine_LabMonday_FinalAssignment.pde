int stateCount = 0;
int state = 0;
Fighter myFighter;

void setup(){
 size(1280,800); 
 myFighter = new Fighter();
}

void draw(){
   if (state == 0) {
    background(0);
    fill(#F7F9FA);
    textSize(52);
    text("Let's Play",525,150);
    text("Press Space",500,600);
    textSize(15);
    text("Press A to go left",25,200);
    text("Press D to go right",25,225);
    text("Press S to go down",25,250);
    text("Press W to go up",25,275);
    myFighter.display();
    myFighter.move();
    stars();
   }
  if (state == 1) {
    background(0);
    fill(#F7F9FA);
    textSize(52);
    text("Get to the top of the screen",325,650);
    text("Then Press Space again",375,700);
    myFighter.display();
    myFighter.move();
    stars();
  }
  if (state == 2) {
    background(0);
    fill(#F7F9FA);
    textSize(100);
    text("Winner!!",450,400);
    myFighter.display();
    myFighter.move();
    stars();
  }
}

void mousePressed(){
  stateCount++;
  state = stateCount % 3;
}

void keyPressed(){
   myFighter.move();
}

void stars(){
  float a = random(0, width);
  float b = random(0, height);
  stroke(0,255,0);
  point(a,b); 
} 



class Fighter{
  int centerX, centerY, offset1, offset2, offsetX1, offsetX2, r1, r2, r3;
  

  Fighter(){
    centerX = round(random(0, width));
    centerY = round(random(0, height));
    offset1 = -20;
    offset2 = +20;
    offsetX1 = -20;
    offsetX2 = + 20;
    r1 = 40;
    r2 = 20;
    r3 = 15;
  }
  
  void display(){
    fill(#288DDE);
    arc(centerX,centerY,80,80,0,PI+QUARTER_PI,CHORD);
  }
  
  void move() {
    if(keyPressed){
      if(key == 'w'){
        centerY = centerY - 5;
      } 
      if(key == 'a'){
        centerX = centerX - 5;
      }
      if(key == 'd'){
        centerX = centerX + 5;
      } 
      if(key == 's'){
        centerY = centerY + 5;
      }
    }
  }
}
