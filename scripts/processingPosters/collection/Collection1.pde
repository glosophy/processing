PImage img;
int imgSize = 325;
int size = 20;
String[] images = { "charly3.jpeg",
                   "aznar.jpeg",
                   "fito.jpeg",
                   "spinetta.png"};
                   
int marginLeft = 150;
int marginRight = marginLeft;
int marginTop = 150;
int marginBottom = marginTop;

void setup() {
  size(1000, 1000);
}

void draw() {
  background(#fafafa);
  noStroke();
  
  for(var i = 0; i < images.length; i++) {
    
    img = loadImage(images[i]);
    img.resize(imgSize, imgSize);
    
    if (images[i] == "charly3.jpeg") {
      push();
      translate(marginLeft, marginTop);
    } if (images[i] == "aznar.jpeg") {
      push();
      translate(width - marginRight - imgSize, marginTop);
    } if (images[i] == "fito.jpeg") {
      push();
      translate(marginLeft, height - marginTop - imgSize);
    } if (images[i] == "spinetta.png") {
      push();
      translate(width - marginRight - imgSize, height - marginTop - imgSize);
    }
    
      for(var x =0; x < img.width; x += size){
        for(var y=0; y < img.height; y += size){
          fill(img.get(x, y)); // gets color value from the image
          rect(x, y, size, size);
        }
      }
    
    pop();
    
  //saveFrame("output4/posterSq-###.png");
  }
}

//void draw() {
//  noStroke();

//  float tilesX = 25;
//  float tilesY = tilesX;

//  float tileW = width / tilesX;
//  float tileH = height / tilesY;

//  for (int x = 0; x < tilesX; x++) {
//    for (int y = 0; y < tilesY; y++) {

//      int px = int(x * tileW);
//      int py = int(y * tileH);
//      color c = img.get(px, py);
//      float b = brightness(c);
//      fill(b);

//      rect(x * tileW, y * tileH, tileW, tileH);
//    }
//  }
  
//  saveFrame("output5/charly-###.png");
//}
