void setup(){
  size(600,600);
}

void draw(){
  background(#111111);
  noStroke();
  fill(#f1f1f1);
    
  float rows = 3;
  float cols = 3;
  float w = width / rows;
  float h = height / cols;
  
  pushMatrix();
  for (int j = 0; j < rows+1; j++) {
    translate(0, (j * 2) * h);
    
    for (int i = 1; i < cols; i++) {
      rect(((i * 2) - 1) * w, 0, w, h);
    }
  }
  popMatrix();
  
  pushMatrix();
  translate(0, h);
  for (int k = 0; k < cols; k++) {
    rect((k * 2) * w, 0, w, h);
  }
  popMatrix();
  
  // a
  //stroke(#f1f1f1);
  //strokeWeight(1.5);
  //noFill();

  arc(w/2, h/2, w/2, h/2, 0, PI, CHORD);
  arc(w/2, h/2, w/2, h/2, PI, TWO_PI, OPEN);
  arc(w/2 + w/4, h/2, w/2, h/2, HALF_PI, HALF_PI + PI, CHORD);
  
  // c
  pushMatrix();
  translate(2*w, 0);
  arc(w/2, h/2, w/2, h/2, QUARTER_PI, PI+QUARTER_PI, CHORD);
  arc(w/2, h/2, w/2, h/2, HALF_PI+QUARTER_PI, PI+HALF_PI+QUARTER_PI, CHORD);
  popMatrix();
  
  // e
  pushMatrix();
  translate(w, h);
  arc(w/2, h/2, w/2, h/2, QUARTER_PI, PI+QUARTER_PI, CHORD);
  arc(w/2, h/2, w/2, h/2, HALF_PI+HALF_PI, PI+HALF_PI+HALF_PI, CHORD);
  popMatrix();
  
  // g
  pushMatrix();
  translate(0, 2*h);
  arc(w/2 - w/18, h/2 - h/8, w/2, h/2, 0, PI, CHORD);
  arc(w/2 - w/18, h/2 - h/8, w/2, h/2, PI, TWO_PI, CHORD);
  arc(w/2 - w/20, h/2 + h/6, w/2, h/2, PI+HALF_PI+QUARTER_PI, TWO_PI+HALF_PI+QUARTER_PI, CHORD);
  popMatrix();  
  
  // i
  pushMatrix();
  translate(w*2, h*2);
  arc(w/2 + w/8, h/2, w/2, h/2, HALF_PI, HALF_PI + PI, CHORD);
  arc(w/2 - w/8, h/2, w/2, h/2, PI+HALF_PI, HALF_PI + TWO_PI, CHORD);
  popMatrix();
  
  //////// black
  //stroke(0);
  
  stroke(#111111);
  strokeWeight(.5);
  fill(#111111);
  
  // b
  pushMatrix();
  translate(w, 0);
  arc(w/2, h/2+h/8, w/2, h/2, 0+QUARTER_PI, PI+QUARTER_PI, CHORD);
  arc(w/2, h/2+h/8, w/2, h/2, PI+QUARTER_PI, TWO_PI+QUARTER_PI, OPEN);
  arc(w/2 - w/4, h/2-h/8, w/2, h/2, PI+HALF_PI, HALF_PI + TWO_PI, CHORD);
  popMatrix();
  
  // d
  pushMatrix();
  translate(0, h);
  arc(w/2, h/2+h/8, w/2, h/2, HALF_PI+QUARTER_PI, HALF_PI+PI+QUARTER_PI, CHORD);
  arc(w/2, h/2+h/8, w/2, h/2, HALF_PI+PI+QUARTER_PI, HALF_PI+TWO_PI+QUARTER_PI, OPEN);
  arc(w/2 + w/4, h/2-h/8, w/2, h/2, HALF_PI, HALF_PI + PI, CHORD);
  popMatrix();

  // f
  pushMatrix();
  translate(2*w, h);
  arc(w/2, h/2-w/8, w/2, h/2, PI, TWO_PI, CHORD);
  arc(w/2, h/2, w/2, h/2, PI, TWO_PI, CHORD);
  arc(w/2-w/4, h/2+h/8, w/2, h/2, HALF_PI+PI, HALF_PI + TWO_PI, CHORD);
  popMatrix();

  // h
  pushMatrix();
  translate(w, 2*h);
  arc(w/2, h/2+h/8, w/2, h/2, QUARTER_PI+PI-HALF_PI, TWO_PI+QUARTER_PI-HALF_PI, CHORD);
  arc(w/2, h/2+h/8, w/2, h/2, PI+QUARTER_PI, TWO_PI+QUARTER_PI, CHORD);
  arc(w/2-w/4, h/2-h/8, w/2, h/2, HALF_PI+PI, HALF_PI + TWO_PI, CHORD);
  popMatrix();
  
  
  //save("frames/abcNoFill.png");
  save("frames/abcWithFill.png");

}
