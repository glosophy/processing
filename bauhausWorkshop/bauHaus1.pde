color bg = 0;
color white = #f1f1f1;

void setup() {
  size(900, 900);
  
}

void draw() {
  
  background(bg);
  strokeCap(RECT);
  rectMode(CENTER);
  fill(white);
  
  stroke(white);
  strokeWeight(30);
  line(random(width), random(height), random(width), random(height));
  
  strokeWeight(10);
  line(random(width), random(height), random(width), random(height));
  
  noStroke();
  ellipse(random(width), random(height), width/8, height/8);
  rect(random(width), random(height), width/5, height/5);

  //saveFrame("frames/bauhaus11-###.png");
}
