
void setup() {
  size(400, 400, P3D);
}
float angle = PI/3;
void draw() {
  background(220);
  translate(width/2, height/2);
  rotateY(angle);
  fill(222, 10, 10);
  rect(-100, -100, 200, 200);
  fill(255);
  rect(-50, -50, 100, 100);
  angle+=0.02;
}
