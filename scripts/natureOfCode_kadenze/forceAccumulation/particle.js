function Particle() {
  this.pos = createVector(width/2, height/2);
  this.vel = createVector(0, 0);
  this.acc = createVector(0, 0);
  
  this.applyForce = function(force) {
    this.acc.add(force);
  }
  
  this.update = function() {
    this.vel.add(this.acc);
    this.pos.add(this.vel); 
    
    this.acc.set(0, 0); // set acc = 0
  }
  
  this.display = function() {
    fill(255);
    ellipse(this.pos.x, this.pos.y, 48, 48);
  }
  
  this.edges = function(){
    if (this.pos.y > height) {
      this.vel.y *= -1;
      this.pos.y = height;
    }
    
    if (this.pos.x > width) {
      this.vel.x *= -1;
      this.pos.x = width;
    }
  }
  
}