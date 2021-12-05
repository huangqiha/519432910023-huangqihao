class ParticleSystem {
  ArrayList<Particle> particles;
  PVector origin;

  ParticleSystem(PVector position) {

    origin = new PVector();
    particles = new ArrayList<Particle>();
  }

  void run() {
    if (makeParticles) {
      origin.set(mouseX, mouseY);
      particles.add(new Particle(origin));
    }
    for (int i = particles.size()-1; i >= 0; i--) {
     Particle p = particles.get(i);
     p.run();

    if (p.isDead()) {
        particles.remove(i);
      }
   }
  }
}
