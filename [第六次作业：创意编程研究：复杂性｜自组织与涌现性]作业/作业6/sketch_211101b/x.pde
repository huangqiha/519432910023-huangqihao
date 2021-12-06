class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
 
  float lifespan;
  Particle(PVector l) {

    acceleration = new PVector(0, 0);
    velocity = new PVector(random(-4, 4), random(-4, 4));
    location = l.copy();
    lifespan = 700;
  }
  void run() {
    update();
    display();
  }
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
  }
 
  boolean isDead() {
    if (lifespan <= 0) {
      return true;
    } else {
      return false;
    }
  }
  void display() {
    // border
    float x=map(mouseX,0,width,0,255);
    float y=map(mouseY,0,height,0,255);
    stroke(241,x,y);

    strokeWeight(50);

    if(key=='1'){ellipse(location.x, location.y, 1,1);}
    if(key=='2'){rect(location.x, location.y, 1,1);}
  }
}
