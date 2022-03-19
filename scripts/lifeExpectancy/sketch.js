let year_1543 = 34;
let year_2019 = 81;
let weeks = 52;

let weeks_1543 = year_1543 * weeks;
let weeks_2019 = year_2019 * weeks;

// set canvas
let horizontal = 58;
let vertical = 85;
let maxRadius = 11;

let width = 1500;
let height = 2000;
let leftMargin = 150;
let topMargin = 150;
let rightMargin = leftMargin;
let bottomMargin = topMargin + 50;

let spaceWidth =
  (width - leftMargin - rightMargin - maxRadius * horizontal) / horizontal;
let spaceHeight = spaceWidth;
  // (height - topMargin - bottomMargin - maxRadius * vertical) / vertical;



function setup() {
  createCanvas(width, height);
  
}

// draw
function draw() {
  background('#FAFAFA');
  noFill();
  strokeWeight(1);
  stroke(0);
  rectMode(CENTER);

  counter = 0; // start counter
  squares = 0; // start square counter
  
  
  push();
  translate(leftMargin, topMargin);
  for (let i = 0; i < vertical; i++) {
    for (let j = 0; j < horizontal; j++) {
      
      if (squares > weeks_1543) {
        fill(0);
      }
      
      if (counter < weeks_2019) {
        
        rect(((j+1) * maxRadius) + (j * spaceWidth), 
                ((i+1) * maxRadius) + (i * spaceHeight), 
                maxRadius, maxRadius); 
      }

      squares +=1;
      counter += 1; // increase counter value to stop drawing rects
    }
  }
  pop();
  
}