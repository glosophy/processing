let einstein = 1897;
let url =
  "https://gist.githubusercontent.com/glosophy/b1f68fdc55101032152eaf6f3b00daf2/raw/6c6887c3982f0d80ecb92caadb3f07e2c840d7cb/decimals.csv";
let fileArray;
let decimals = [];

// set canvas
let horizontal = 40;
let vertical = 60;
let maxRadius = 15;

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

// set colors
let darkRed = "#E63232";
let orange = "#F3722C";
let lightOrange = "#F8961E";
let yellow = "#FFD043";
let lightGreen = "#7FC96B";
let aqua = "#43AA8B";
let lightBlue = "#277DA1";
let darkBlue = "#3B498E";
let purple = "#66418A";
let gray = '#B2B2B2';

// preload csv
function preload() {
  fileArray = loadStrings(url);
}

function setup() {
  createCanvas(width, height);

  // print(spaceWidth);

  for (let i = 0; i < fileArray.length; i++) {
    let rowArray = splitTokens(fileArray[i], ",");
    // print(rowArray[0]);
    decimals.push(rowArray[0]);
  }
  
}

// draw
function draw() {
  background("#FAFAFA");
  noStroke();
  // fill(255, 0, 0, 150);

  counter = 0; // start counter

  // wave = sin(radians(frameCount * 0.0004) * width * 100);

  push();
  translate(leftMargin, topMargin);
  for (let i = 0; i < vertical; i++) {
    for (let j = 0; j < horizontal; j++) {
      if (counter < einstein) {
        
        if (decimals[counter+1] == 0) {
          fill(darkRed);
        } if (decimals[counter+1] == 1) {
          fill(orange);
        } if (decimals[counter+1] == 2) {
          fill(lightOrange);
        } if (decimals[counter+1] == 3) {
          fill(yellow);
        } if (decimals[counter+1] == 4) {
          fill(lightGreen);
        } if (decimals[counter+1] == 5) {
          fill(aqua);
        } if (decimals[counter+1] == 6) {
          fill(lightBlue);
        } if (decimals[counter+1] == 7) {
          fill(darkBlue);
        } if (decimals[counter+1] == 8) {
          fill(purple);
        } if (decimals[counter+1] == 9) {
          fill(gray);
        }
        
        ellipse(
          (j + 1) * maxRadius + j * spaceWidth,
          (i + 1) * maxRadius + i * spaceHeight,
          maxRadius,
          maxRadius
        ); // add 1 to index
      }
      counter += 1; // increase counter value to stop drawing circles after 1897
    }
  }
  pop();
}
