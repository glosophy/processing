color bg = 0;
color white = #f1f1f1;
float diff = 100;
float speedX = 1;
float x1 = 0 + 300;
float y1 = -diff;
float x2 = diff + 300;
float y2 = diff;
float x3 = -diff + 300;
float y3 = diff;
float ballX = 200;
float rectX = 0;


void setup() {
  size(900, 900); 
}

void draw() {
  
  if (speedX > 0) {
    background(bg);
    fill(white);
  } else {
    background(white);
    fill(bg);
  }
    
  noStroke();
  dustDirt();

  translate(0, height/2);

  //// triangle
  //triangle(x1, y1 - 5, 
  //         x2, y2 - 5, 
  //         x3, y3 - 5);
           
  //x1 = x1 + speedX;
  //x2 = x2 + speedX;
  //x3 = x3 + speedX;
  
  // bouncing ball upper position
  ellipse(ballX, -1 * abs(sin(radians(frameCount))) * 200, 
          100, 100);
  
  ballX = ballX + speedX;
  
  // linear rect lower position
  rect(rectX, 50, 400, 10);
  
  rectX = rectX + speedX;

  // Moving variables
  if (rectX >  width - 400 || rectX < 1) {
    speedX = speedX * -1;
  }
  
  //saveFrame("frames/waveFigures-###");
  
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
