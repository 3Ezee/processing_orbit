Particle[] particles = new Particle[10];

void setup() {
  size(1024, 1000);
  
  
  
  
  for (int i=0 ; i<5 ; i++)
  {
    particles[i] = new Particle(width/2, height/2,40+cos(i),20+cos(i),8*cos(i),2*cos(i));  
  }
  
  for (int i=5 ; i<10 ; i++)
  {
    particles[i] = new Particle(width/(i), height/2,0,40+cos(i),0,10*cos(i));  
  }  
}

void draw() {
    background(0);
    //fill(255);
      
    
    for (int i=0 ; i<10 ; i++)
    {
      particles[i].update();
      particles[i].show(2);  
    } 
    
    fill(125, 0, 0);
    ellipse(width/2, height/2,200,200);
    
    for (int i=0 ; i<10 ; i++)
    {
      particles[i].update();
      particles[i].show(1);  
    }  
}
