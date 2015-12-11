class Ball {
 //declaring all information (fields) contained within the Ball class
  PVector loc, vel;
  float diam;
  color c;

//this is a constructor. you can have more than one constructor for a given class
  Ball() {
    diam = random(100,300);;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    c = color(random(255), random(50), random(100, 255));
    vel = PVector.random2D();
    vel.mult(5);
  }
  
  Ball(float tDiam) {
    diam = tDiam;
    loc = new PVector(random(diam/2, width-diam/2), random(diam/2, height-diam/2));
    c = color(random(255), random(50), random(100, 255));
    vel = PVector.random2D();
    vel.mult(5);
  }

//after declaring fields and setting up constructors, you can define your methods
  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  
  void move() {
    loc.add(vel);
  }
  
  void bounceCheck() {
    if (loc.x>=width-diam/2||loc.x<=diam/2) {
      vel.x*=-1;
    }
    if (loc.y>=height-diam/2||loc.y<=diam/2) {
      vel.y*=-1;
    }

  }
  
  void wrap() {
    if (loc.x>width) {
      loc.x = 0;
    }
    if (loc.y>height) {
      loc.y = 0;
    }
    if (loc.x<0) {
      loc.x = width;
    }
    if (loc.y<0) {
      loc.y = height;
    }
  }
}