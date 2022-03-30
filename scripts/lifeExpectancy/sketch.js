new p5; // prematurely instantiate class p5. ;-)

let year_1820 = 30;
let year_2019 = 72;
let weeks = 52;

let weeks_1820 = year_1820 * weeks;
let weeks_2019 = year_2019 * weeks;

// set canvas
let horizontal = 66;
let vertical = 81;
let maxRadius = 11;
let segment = maxRadius * sin(radians(60));

let width = 1500;
let height = 2000;
let leftMargin = 150;
let topMargin = 150;
let rightMargin = leftMargin;
let bottomMargin = topMargin + 50;

// let spaceWidth =
//   (width - leftMargin - rightMargin - maxRadius * horizontal) / horizontal;

let spaceWidth =
  (width - leftMargin - rightMargin - maxRadius * horizontal) / horizontal;
let spaceHeight = 
  (height - topMargin - bottomMargin - segment * vertical) / vertical;



function setup() {
  createCanvas(width, height);
  
}

// draw
function draw() {
  background('#FAFAFA');
  noFill();
  strokeWeight(2);
  stroke('#ff4800');
  rectMode(CENTER);


  counter = 0; // start counter
  squares = 0; // start square counter
  
  
  push();
  translate(leftMargin, topMargin);
  
  for (let i = 0; i < vertical; i++) {
    for (let j = 0; j < horizontal; j++) {
      
      if (squares > weeks_1820) {
        noStroke();
        fill('#ff4800');
      }
      
      if (counter < weeks_2019) {
        
        if (j % 2 == 0) {
          
          push();
          translate(((j+1) * maxRadius) + (j * spaceWidth), ((i+1) * maxRadius) + (i * spaceHeight) + maxRadius);
          polygon(0, 0, maxRadius, 6);
          pop();
          
        } else {
            push();
            translate(((j+1) * maxRadius) + (j * spaceWidth), ((i+1) * maxRadius) + (i * spaceHeight));
            polygon(0, 0, maxRadius, 6); 
            pop();
        }
      }

      squares +=1;
      counter += 1; // increase counter value to stop drawing rects
    }
  }
  pop();
  
}

function polygon(x, y, radius, npoints) {
  let angle = TWO_PI / npoints;
  beginShape();
  for (let a = 0; a < TWO_PI; a += angle) {
    let sx = x + cos(a) * radius;
    let sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}