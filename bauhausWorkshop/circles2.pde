color fg = 0;
color bg = #f1f1f1;
color red = #ff0000;
color blue = #0000ff;

void setup() {
  size(1000, 1000);
}

void draw() {
  background(bg);
  noStroke();
  fill(fg);
  rectMode(CORNER);

  for (int i = 0; i < 200; i++) {
    push();
    translate(width/2, height/2);
    rotate(radians(i*20.5+(i*frameCount*0.005)));
    rect(mouseX*0.002*i, 0, 100, 5);
    ellipse(mouseX*0.002*i+15, 35, 10, 10);
    pop();
  }

  fill(blue);
  translate(mouseX, mouseY);
  triangle(0, 0, 40, 40, 0, 60);
  
  //saveFrame("frames/circles2-###");
}
