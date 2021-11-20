ParticleSystem ps;
boolean makeParticles;
PImage img;

void setup() {
background(0);
   frameRate(30);
  ps = new ParticleSystem(new PVector(width/2, height/2));
  img=loadImage("pic1.jpg");
  img.loadPixels();
  size(1200,800);
  img.resize(width,height);
  
}
void draw() {
   if (key=='k'){
  fill(0,1);
  rect(0,0,width,height);}
  
//  ps.addParticle();
  ps.run();
}

void mouseMoved() {
  if((mouseX>0)&&(mouseX<width)&&(mouseY>0)&&(mouseY<height)){
  makeParticles = true;
}
 else{makeParticles = false;}
}
void mouseReleased() {
 makeParticles = false;
}
