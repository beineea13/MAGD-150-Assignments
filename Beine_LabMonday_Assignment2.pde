void draw(){
  
  size(1280,800);
  background(155,153,153);
  
  fill(255,255,255);
  rect(100,100,400,250);
  line(300,0,300,100);
  rect(800,100,400,250);
  line(1000,0,1000,100);
  
  fill(135,206,255);
  rect(230,240,150,100);
  rect(930,240,150,100);
 
  strokeWeight(2);
  strokeCap(ROUND);
  fill(0,0,0);
  line (265,330,335,330);
  strokeWeight(2);
  strokeCap(ROUND);
  fill(0,0,0);
  line (965,330,1035,330);

  stroke(0);
  strokeWeight(3);
  ellipseMode(CENTER);
  fill(238,118,0);
  ellipse(mouseX,mouseY,55,55);
  
}
