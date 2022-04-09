PImage img;
int size = 30;
String[] images = { "charly3.jpeg",
                   "aznar.jpeg",
                   "fito.jpeg",
                   "spinetta.png"};

void setup() {
  size(900, 900);

}

void draw() {
  background(255);
  noStroke();
  
  for(var i = 0; i < images.length; i++) {
    
    img = loadImage(images[i]);
    
    
    
      for(var x =0; x < img.width; x += size){
        for(var y=0; y < img.height; y += size){
          fill(img.get(x, y)); // gets color value from the image
          rect(x, y, size, size);
        }
      }
    
  //saveFrame("output4/charly-###.png");
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
