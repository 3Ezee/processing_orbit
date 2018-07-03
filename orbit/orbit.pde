Particle particle;

void setup() {
  size(720, 640);
  particle = new Particle(width/2, height/2,10,-2.5 );
  
}

void draw() {
    background(0);
    particle.update();
    particle.show();
}
