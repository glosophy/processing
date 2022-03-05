float angle = 0;

void setup(){
  size(900,900);
  background(0);
}

void draw(){
  fill(#F1F1F1);
  noStroke();
  
  translate(width/2,height/2);
  
  for (int i = 0; i < 70; i++) {

    float waveX1 = sin(radians(frameCount * 1+i)) * width * 0.4;
    float waveY1 = cos(radians(frameCount * 1+i)) * height * 0.4;
    
    float waveX2 = sin(radians(frameCount * 4 + i*1)) * 60;
    
    rect(waveX1 + waveX2, waveY1, 3, 3);
  
  }
  
  //saveFrame("output2/Wave1-####.png");
}
