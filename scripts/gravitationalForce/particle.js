class Particle {

  constructor(x, y, m) {
    this.pos = createVector(x, y);
    this.vel = createVector(1, 0);
    this.acc = createVector(0, 0);
    this.mass = m;
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
    stroke(0);
    strokeWeight(2);
    fill(255, 120);
    ellipse(this.pos.x, this.pos.y, this.mass * 16, this.mass * 16);
  }