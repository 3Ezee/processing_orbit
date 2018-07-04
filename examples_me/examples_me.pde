/**
 * Triangle Strip 
 * by Ira Greenberg. 
 * 
 * Generate a closed ring using the vertex() function and 
 * beginShape(TRIANGLE_STRIP) mode. The outsideRadius and insideRadius 
 * variables control ring's radii respectively.
 */

int x;
int y;
float outsideRadius = 150;
float insideRadius = 100;

void setup() {
  size(640, 360);
  background(204);
  x = width/2;
  y = height/2;
  
}

void draw() {
  background(204);
  
  circle();
}

void circle(){
  fill(204);
  ellipse(width/2, height/2, 300, 300);
}
