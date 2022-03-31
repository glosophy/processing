new p5; // prematurely instantiate class p5. ;-)

let year_1820 = 30;
let year_2019 = 72;
let weeks = 52;

let weeks_1820 = year_1820 * weeks;
let weeks_2019 = year_2019 * weeks;

// set canvas
let horizontal = 62;
let vertical = 85;
let diam = 13;
let radius = diam/2;
let angle = 360/12;
let side = radius;


let width = 1500;
let height = 2000;
let leftMargin = 150;
let topMargin = 150;
let rightMargin = leftMargin;
let bottomMargin = topMargin + 50;


function setup() {
  createCanvas(width, height);
  
}

// draw
function draw() {
  background('#FAFAFA');
  noFill();
  strokeWeight(1);
  stroke('#ff4800');


  counter = 0; // start counter
  squares = 0; // start square counter
  
  
  push();
  translate(leftMargin, topMargin);
  
  for (let j = 1; j < vertical; j++) {
    for (let i = 0; i < horizontal; i++) {
      
      if (squares > weeks_1820) {
        stroke(255);
        fill('#ff4800');
      }
      
      if (counter < weeks_2019) {
        
        if (i % 2 == 0) {

          push();
          translate((i*2*diam) - (i*side), diam-side/4 + (j*(radius+(side/2)+side/4)*2));
          polygon(0, 0, diam, 6);
          pop();


        } else {

          push();
          translate((i*2*diam) - (i*side), 0 + (j*(radius+(side/2)+side/4)*2));
          polygon(0, 0, diam, 6);
          pop();
        }

      squares +=1;
      counter += 1; // increase counter value to stop drawing rects
    }
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