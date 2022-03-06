color black = 0;
color white = #f1f1f1;

void setup() {
  size(900, 900);
  rectMode(CENTER);
}

void draw() {
  
  background(black);
  fill(white);
  noStroke();
  
  dustDirt();
  
  blendMode(DIFFERENCE);
  
  translate(width/2, height/2);
  
  push();
  rotate(radians(frameCount * (180/(2*PI*100))));
  rect(0, 0, 50, 400);
  pop();

  push();
  rotate(radians(frameCount * (180/(2*PI*-100))));
  rect(0, 0, 75, 400);
  pop();
  
  ellipse(0, 0, 15, 15);
  
  saveFrame("output/waveFigures5-####.png");
}

void dustDirt() {
  for (int i = 0; i < 3; i++) {
    float x = random(width);
    float y = random(height);
    
    beginShape();
    vertex(x,y);
    vertex(x + random(10), y + random(11));
    vertex(x + random(8), y + random(9));
    vertex(x + random(10), y + random(15));
    vertex(x + random(20), y + random(6));
    endShape();   
  }
   
}
