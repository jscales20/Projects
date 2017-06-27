void setup() {
  size(640, 360);
}

void draw() {
  background(102);
  
  fill(186,95,46);
  pushMatrix();
  translate(width*0.2, height*0.5);
  rotate(frameCount / 200.0);
  star(0, 0, 5, 70, 3); 
  popMatrix();
  
  fill(255,235,0);
  pushMatrix();
  translate(width*0.5, height*0.5);
  rotate(frameCount / 400.0);
  star(0, 0, 80, 100, 40); 
  popMatrix();
  
  fill(0,166,255);
  pushMatrix();
  translate(width*0.8, height*0.5);
  rotate(frameCount / -100.0);
  star(0, 0, 30, 70, 5); 
  popMatrix();
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    //The for loop in this code makes the 3 different stars
    //keep spinning repeatedly, or as the code says, floating.
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}