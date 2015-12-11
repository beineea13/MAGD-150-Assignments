boolean mState = false;


void setup(){
 size(12800,800); 
}

void draw(){
 if(mState == false){
   background(255);
   fill(178,123,22);
   rect(350,300,600,250);
   rect(360,550,50,250);
   rect(885,550,50,250);
   fill(219,217,215);
   ellipse(400,400,90,90);
   ellipse(900,400,90,90);
   ellipse(550,350,90,90);
   ellipse(750,350,90,90);
   ellipse(550,500,90,90);
   ellipse(750,500,90,90);
   fill(0);
   textSize(55);
   text("Happy Thanksgiving",400,100);
 }else{
   background(#20AF58);
   fill(#BF7600);
   ellipse(mouseX,mouseY,80,40);
   strokeWeight(5);
   line(100,800,100,0);
   strokeWeight(1);
   line(250,800,250,0);
   line(400,800,400,0);
   line(550,800,550,0);
   line(700,800,700,0);
   line(850,800,850,0);
   line(1000,800,1000,0);
   strokeWeight(5);
   line(1180,800,1180,0);
   strokeWeight(1);
   fill(0);
   textSize(55);
   text("Time For Football",400,400);
 }
   
}

void mousePressed(){
  mState = !mState;
  println("changed!");
}
