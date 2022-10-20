import processing.sound.*;
AudioIn mic;
Amplitude amp;

float x, y, yy, yPos, yLast, xLast, lineHeight,  red, sW = 10;
float xStep = 10;
float yStep = 30;
float margin = 100;
float sensitivity = 0.1;

void setup() {
  //fullScreen();
  size(800, 800);
  //surface.setLocation(987, 70);
  background(#ffffff);

  //Sound.list();
  mic = new AudioIn(this, 0);
  mic.start();
  amp = new Amplitude(this);
  amp.input(mic);

  x = margin;
  y = margin;
  yy = margin;
  yPos = margin;
  xLast = margin;
  yLast = margin;
}

void draw() {

  float volume = amp.analyze();  // BETWEEN 0 AND 1
  println(volume);

  //dia = map(volume, 0, sensitivity, 0, 30);
  red = map(volume, 0, sensitivity, 0, 255);
  sW = map(volume, 0, sensitivity, xStep/6, xStep/4);
  xStep = map(volume, 0, sensitivity, 6, 30);
  lineHeight = map(volume, 0, sensitivity, 0, yStep/2);
   lineHeight = constrain(lineHeight, 0, yStep/2);

  
  //if (volume>sensitivity) {
  //  fill(0, 0, 255);
  //} else {
  //  fill(red, 0, 0);
  //}
  
  if (volume > sensitivity) {
    
    float xr = random(-xStep - lineHeight, xStep + lineHeight);
    float yr = random(-xStep - lineHeight, xStep + lineHeight);
    float dia = random(3, xStep * 1/3);
    noStroke();
    fill(20, random(190, 255));
    ellipse(x + xr, y + yr, dia, dia);
  }

  stroke(200, 0, 0, 100);
  strokeWeight(1);
  line(x + xStep/2, yPos + yStep, x + xStep/2, yPos - yStep);
  
  strokeCap(CORNER);
  strokeWeight(sW);
  stroke(20, random(190, 255));
  
  x += xStep;
  y = yPos-yStep/2 - lineHeight;
  yy = yPos+yStep/2 + lineHeight;
  
  line(x + xStep, y, x - xStep, yy);
  line(x, y, xLast, yLast);

  xLast = x;
  yLast = yy;
  
  if (x>width-margin) {
    x = margin + random(-xStep, xStep);
    yPos += yStep * 1.5;
    xLast = margin + random(-xStep, xStep);
    yLast = yPos;
  }
  if (yPos>height-margin) {
    reset();
    x = margin;
    yPos = margin;
    xLast = margin;
    yLast = margin;
  }
}

void reset() {
  String timestamp = year()+"."+month()+"."+day()+"_"+hour()+"."+minute()+"."+second();
  save("images/"+timestamp+".png");  
  println("saved at " + timestamp);
  background(#ffffff);
}
