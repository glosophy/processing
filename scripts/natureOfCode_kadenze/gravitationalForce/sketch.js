let particles = [];
let attractor;

function setup() {
  createCanvas(1000, 1000);
  background('#FAFAFA');
  
  for (var i = 0; i < 3; i++) {
    particles[i] = new Particle(random(width/2), random(height/2), random(0.1, 2), random(255));
  }
  
  attractor = new Attractor(width / 2, height / 2);
}

function draw() {
  // background('#FAFAFA');

  for (var i = 0; i < particles.length; i++) {
  
    let force = attractor.calculateAttraction(particles[i]);

    particles[i].applyForce(force);
    particles[i].update();
    particles[i].show();
  
  }
  
  attractor.show();
}

class Particle {
  constructor(x, y, m, c) {
    this.pos = createVector(x, y);
    this.vel = createVector(1, 0);
    this.acc = createVector(0, 0);
    this.mass = m;
    this.color = c;
  }

  applyForce(force) {
    let f = force.copy();
    f.div(this.mass);
    this.acc.add(f);
  }

  update() {
    this.vel.add(this.acc);
    this.pos.add(this.vel);
    this.acc.set(0, 0);
  }

  show() {
    stroke(this.color);
    strokeWeight(1.5);
    noFill();
    ellipse(this.pos.x, this.pos.y, this.mass * 10, this.mass * 10);
  }
}

class Attractor {
  constructor(x, y) {
    this.pos = createVector(x, y);
    this.mass = 20;
    this.G = 1;
  }

  calculateAttraction(p) {
    // Calculate direction of force
    let force = p5.Vector.sub(this.pos, p.pos);
    // Distance between objects
    let distance = force.mag();
    // Artificial constraint
    distance = constrain(distance, 5, 25);
    // Normalize vector (distance doesn't matter here, we just want this vector for direction)
    force.normalize();
    // Calculate gravitional force magnitude
    let strength = (this.G * this.mass * p.mass) / (distance * distance);
    // Get force vector -> magnitude * direction
    force.mult(strength);
    return force;
  }

  show() {
    ellipseMode(CENTER);
    noStroke();
    fill(255, 0, 0);
    ellipse(this.pos.x, this.pos.y, this.mass, this.mass);
  }
}
