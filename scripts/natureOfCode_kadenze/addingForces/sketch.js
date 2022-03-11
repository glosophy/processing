var particle;

function setup() {
  createCanvas(400, 400);
  particle = new Particle();
}

function draw() {
  background(50);
  
  var gravity = createVector(0, 0.1);
  particle.applyForce(gravity);
  
  particle.update();
  particle.display();
  
}