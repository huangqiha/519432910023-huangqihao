

class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  boolean SaveImage;
  float lifespan;
  float r=1;
  Particle(PVector l) {
    acceleration = new PVector(0, 0);
    velocity = new PVector(random(-1, 1), random(-1, 1));
    location = l.copy();
    lifespan = 200;
  }
  void run() {
    update();
    display();
    keyPressed();
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
    
   noStroke();
    color c=img.get((int)location.x,(int)location.y);
    fill(c);
      if (key=='f'){
     r=r+0.1; }
        if (key=='g'){
     r=r-0.1; }
       if (key=='h'){
     r=r+0; }
     
    ellipse(location.x, location.y,r,r);

}
}
