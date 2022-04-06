PImage img;

void setup() {
  size(900, 900);
  img = loadImage("spinetta1.png");
  img.resize(width, height);

}

void draw() {
  noStroke();

  float tilesX = 25;
  float tilesY = tilesX;

  float tileW = width / tilesX;
  float tileH = height / tilesY;

  for (int x = 0; x < tilesX; x++) {
    for (int y = 0; y < tilesY; y++) {

      int px = int(x * tileW);
      int py = int(y * tileH);
      color c = img.get(px, py);
      float b = brightness(c);
      fill(b);

      rect(x * tileW, y * tileH, tileW, tileH);
    }
  }
  
  saveFrame("output/spinetta1-###.png");
}


//PImage img;

//void setup() {
//  size(900, 900);
//  img = loadImage("spinetta1.png");
//  img.resize(width, height);
//}

//void draw() {
//  image(img, 0, 0);

  //background(0); 

  //float tilesX = 50;
  //float tilesY = 50;
  //float tileW = width/tilesX;
  //float tileH = height/tilesY; 
  //noStroke();

  //float wave = map(sin(radians(frameCount)), -1, 1, 0, 255);
  //for (int x = 0; x < tilesX; x++) {
  //  for (int y = 0; y < tilesY; y++) {

  //    int pX = int(x*tileW);
  //    int pY = int(y*tileH);

  //    color c = img.get(pX, pY);
  //    float b = brightness(c);

  //    if (b < wave) {
  //      fill(0);
  //    } else {
  //      fill(#f1f1f1);
  //    }

  //    rect(x*tileW, y*tileH, tileW, tileH);
  //  }
  //}
  
//  saveFrame("output3/spinetta-###.png");
  
//}
