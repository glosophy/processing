var walkers = [];

function setup() {
  createCanvas(1000, 1000);
  background('#FAFAFA');

  walkers = [...Array(100)].map(() => new Walker());
}

function draw() {
  
  for (const w of walkers) {
    w.update();
    w.display();
  }
  
  
}

function Walker() {
  this.pos = createVector(width/2, height/2);
  this.vel = createVector(0, 0);
  this.radius = 40; // create radius
  
  this.update = function() {
    this.acc = createVector(random(-1, 1), random(-1, 1));
    this.acc.mult(0.04);
    
    this.vel.add(this.acc);
    this.pos.add(this.vel);
    
    this.radius += -0.08; // make radius variable
    
    if (this.radius < 0) {
      this.radius = 0;
    }
  
  this.display = function() {
    fill(255, 0, 0, 30);
    noStroke();
    rect(this.pos.x, this.pos.y, this.radius, this.radius);

    
    }
  } 
}