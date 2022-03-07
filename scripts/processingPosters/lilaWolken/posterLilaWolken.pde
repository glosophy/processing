float x = 0;
float y = 0;
float a = random(-3, -1); 
float b = random(-2, -1);
float c = random(-7, -1);
float d = random(-4, -1);
float sc = 200;

color lila = #9D69A3;
color white = #FAFAFA;

void setup() {   
  size(1500, 2000);
  background(white);
}

void draw() {
  translate(width/2, height/2);
  
  //stroke(white, 40);
  stroke(lila, 40);
  
  //for (int i = 0; i < 500; i++)
  //  jong();
    
  //translate(width/3, height/3);  
  for (int i = 0; i < 500; i++)
    cliff();
    
    
  saveFrame("outputLilaFinal2/poster1-####");
}

void jong() {
  float nx = sin(a * y) - cos(b * x);  //De Jong attractors
  float ny = sin(c * x) - cos(d * y);
  point(sc*x, sc*y);
  x = nx;
  y = ny;
}

void cliff() {
  float nx = sin(a * y) + cos(b * x);  //Clifford attractors
  float ny = sin(c * x) + cos(d * y);
  point(sc*x, sc*y);
  x = nx;
  y = ny;
}
