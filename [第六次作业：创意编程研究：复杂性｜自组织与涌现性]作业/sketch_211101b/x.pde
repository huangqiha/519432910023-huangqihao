class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
 
  float lifespan;
  Particle(PVector l) {
    // The acceleration
    acceleration = new PVector(0, 0);
    // circel's x and y ==> range
    velocity = new PVector(random(-4, 4), random(-4, 4));
    // apawn's position
    location = l.copy();
    // the circle life time
    lifespan = 700;
  }
  void run() {
    update();
    display();
  }
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    //lifespan-=1.0;
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
    //stroke(100);
    // border's weight
    strokeWeight(50);
    //float r = random(0,255);
   // float g = random(0,255);
   // float b = random(0,255);
    // random the circle's color
   // fill(r,g,b, lifespan);
    // draw circle
    if(key=='1'){ellipse(location.x, location.y, 1,1);}
    if(key=='2'){rect(location.x, location.y, 1,1);}
  }
}
