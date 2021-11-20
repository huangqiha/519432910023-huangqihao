

class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  boolean SaveImage;
  float lifespan;
  float r=1;
  Particle(PVector l) {
    // The acceleration
    acceleration = new PVector(0, 0);
    // circel's x and y ==> range
    velocity = new PVector(random(-1, 1), random(-1, 1));
    // apawn's position
    location = l.copy();
    // the circle life time
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
   // if (location.x<0)
    //  {location.x=width;}
   // if(location.x>width){
   //   location.x=0;}
   // if (location.y<0)
   //   {location.y=height;}
   // if(location.y>height){
    //  location.y=0;}
    //stroke(241,x,y);
    //stroke(100);
    // border's weight
    //strokeWeight(50);
    //float r = random(0,255);
   // float g = random(0,255);
   // float b = random(0,255);
    // random the circle's color
   // fill(r,g,b, lifespan);
    // draw circle
   // int xx=floor(random(width));
   // int yy=ceil(random(height));
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

    //rect(xx, yy, 10,10);
    //ellipse(location.x, location.y, 1,1);
  if (key=='s'){
SaveImage=true;}
  
if (SaveImage){
  save("output/pic1"+year()+month()+day()+hour()+minute()+second()+".jpg");
   SaveImage=false;
if (key=='d'){
 SaveImage=false;
}

}
}

void keyPressed(){


}
  }
  
