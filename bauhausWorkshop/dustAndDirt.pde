color bg = 0;
color white = #f1f1f1;

void setup() {
  size(900, 900);
}
  
void draw() {
  background(bg);
  fill(white);
  dustDirt(); 
  
  //saveFrame("frames/dustDirt-###");
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
