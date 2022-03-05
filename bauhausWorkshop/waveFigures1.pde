color black = 0;
color white = #f1f1f1;

void setup() {
  size(900, 900); 
}

void draw() {
  
  background(0);
  noStroke();
  fill(white);
  
  blendMode(DIFFERENCE);
  ellipse(width/2, tan(radians(frameCount))*150, 400, 400);
  
  for (int i = 0; i < 60; i++) {
    rect(0, 0 + 20*i, width-width/2, 7);  
  }
  
  //saveFrame("frames/circle2-###");
}
