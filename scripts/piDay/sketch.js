let einstein = 1897;
let url = 'https://gist.githubusercontent.com/glosophy/b1f68fdc55101032152eaf6f3b00daf2/raw/6c6887c3982f0d80ecb92caadb3f07e2c840d7cb/decimals.csv';
let fileArray;
let decimals = [];

// set canvas
let horizontal = 40;
let vertical = 60;
let maxRadius = 20;

let width = 1296;
let height = 1728;
let leftMargin = 150;
let topMargin = 150;
let rightMargin = leftMargin;
let bottomMargin = topMargin + 50;

let spaceWidth =
  (width - leftMargin - rightMargin - maxRadius * horizontal) / horizontal;
let spaceHeight = spaceWidth;
  // (height - topMargin - bottomMargin - maxRadius * vertical) / vertical;


// preload csv
function preload() {
  fileArray = loadStrings(url);
}

function setup() {
  createCanvas(width, height);
  
  // print(spaceWidth);
  
  for (let i = 0; i < fileArray.length; i++) {
    let rowArray = splitTokens(fileArray[i], ',');
    // print(rowArray[0]);
    decimals.push(rowArray[0]);
  }

}

// draw
function draw() {
  background('#FAFAFA');
  noStroke();
  fill(0, 200);
  // rectMode(CENTER);

  counter = 0; // start counter
  
  // wave = sin(radians(frameCount * 0.0004) * width * 100);

  push();
  translate(leftMargin, topMargin);
  for (let i = 0; i < vertical; i++) {
    for (let j = 0; j < horizontal; j++) {
      
      if (counter < einstein) {
      
        ellipse(((j+1) * maxRadius) + (j * spaceWidth), 
                ((i+1) * maxRadius) + (i * spaceHeight), 
                decimals[counter+1]*2, decimals[counter+1]*2); // add 1 to index 
      }
      counter += 1; // increase counter value to stop drawing circles after 1897
    }
  }
  pop();
  
}