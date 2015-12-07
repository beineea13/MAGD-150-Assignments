int posX, posY, sizeX, sizeY;
color c; 
color a;
color b;

void setup(){
  size(800, 600);
  posX = 400;
  posY = 450;
  sizeX = 100;
  sizeY = 100;
}

void draw(){
  randomizePos();
  colorize();
  displayEllipse();
  displayRect();
}

void randomizePos(){
  posX = round(random(width));
  posY = round(random(height));
}

void colorize(){
  c = round(random(255));
  a = round(random(60));
  b = round(random(125));
}

void displayEllipse(){
  background(b);
  fill(c,a,b);
  ellipse(posX, posY, sizeX, sizeY);
  posX = round(random(width));
  posY = round(random(height));
}

void displayRect(){
  fill(c,a,b);
  rect(posX, posY, sizeX, sizeY);
  posX = round(random(width));
  posY = round(random(height));
}
