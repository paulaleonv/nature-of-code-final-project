//Roots moving. 
//code based on work by ryan chon https://www.openprocessing.org/sketch/158950

// having a new class called Leaf, which has x, y, d
class Leaf {
  float x;
  float y;
  float d;
  Leaf(float _x, float _y, float _d) {
    x = _x;
    y = _y;
    d = _d;
  }
}
class pathfinder {
  PVector location;
  PVector velocity;
  float diameter;
  pathfinder() {
    location = new PVector(width*0.7, height*0.4);
    velocity = new PVector(0, 1);
    diameter = 9;
  }
  pathfinder(pathfinder parent) {
    location = parent.location.get();
    velocity = parent.velocity.get();
    float area = PI*sq(parent.diameter/2);
    float newDiam = sqrt(area/2/PI)*2;
    diameter = newDiam;
    parent.diameter = newDiam;
  }
  void update() {
    if (diameter>0.5) {
      // save the old x, y, d to allPos arraylist
      allPos.add(new Leaf(location.x, location.y, diameter));
      location.add(velocity);
      PVector bump = new PVector(random(-1, 1), random(-1, 1));
      bump.mult(0.1);
      velocity.add(bump);
      velocity.normalize();
      if (random(0, 1)<0.02) {
        paths = (pathfinder[]) append(paths, new pathfinder(this));
      }
    }
  }
}