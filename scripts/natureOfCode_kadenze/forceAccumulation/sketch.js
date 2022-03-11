var particle;

function setup() {
  createCanvas(400, 400);
  particle = new Particle();
}

function draw() {
  background(50);
  
  var gravity = createVector(0, 0.2);
  var wind = createVector(0.1, 0);
  
  particle.applyForce(gravity);
  
  if (mouseIsPressed) {
    particle.applyForce(wind);
  }
  
  particle.update();
  particle.edges();
  particle.display();
  
}