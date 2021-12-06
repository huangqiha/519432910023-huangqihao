ParticleSystem ps;
boolean makeParticles;
 
void setup() {
  size(1200, 800);
   
  ps = new ParticleSystem(new PVector(width/2, height/2));
}
void draw() {
 
  background(0);
  ps.run();
}

void mousePressed() {
  makeParticles = true;
}
void mouseReleased() {
  makeParticles = false;
}
