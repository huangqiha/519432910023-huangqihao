class particleGenerator2 {
  ArrayList<Particle2> particles;
  PVector pos;

  particleGenerator2() {
    pos = new PVector();
    particles = new ArrayList<Particle2>();
  }

  void run() {
    if (makeParticles) {
      pos.set(mouseX, mouseY);
      particles.add(new Particle2(pos));
    }
    for (int i = particles.size ()-1; i >= 0; i--) {
      Particle2 p = particles.get(i);
      p.run();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
}

void mousePressed() {
  makeParticles = true;
}
void mouseReleased() {
  makeParticles = false;
}


class Particle2 {
  PVector pos;
  PVector vel;
  float sze, mx, my, maxSze;
  int angle, incr;

  Particle2(PVector p) {
    vel = new PVector(random(-2, 2), random(-2, 2));
    vel.mult(5);
    pos = p.get();
    sze = 1;
    angle  = 0;
    maxSze = random(5, 10);
    incr = 5;
    if (random(1) < 0.5) incr = -5;
    mx = random(0.3, 0.5);
    if (random(1) < 0.5) mx = -mx;
    my = random(0.3, 0.5);
    if (random(1) < 0.5) my = -my;
  }

  void run() {
    move();
    display();
  }

  void move() {
    vel.x += mx;
    vel.y += my;
    pos.add(vel);
    sze  += random(0.5, 1.5);
    angle += incr;
  }

  void display() {
    noStroke();
    strokeWeight(0.5);
    drawTri(pos.x, pos.y, sze, angle);
  }

  boolean isDead() {
    if (sze >=  maxSze) {
      return true;
    } else {
      return false;
    }
  }

  void drawTri(float xIn, float yIn, float sz, int ang) {
    float x, y;
 
    color color_tri=img.get(mouseX,mouseY);
    fill(color_tri);
    beginShape();
    for (int a = ang; a < 360 + ang; a += 360/5) {
      x = xIn + cos(radians(a)) * sz;
      y = yIn + sin(radians(a)) * sz;
      vertex(x, y);
    }
    endShape(CLOSE);
  }
 
}
