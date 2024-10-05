void setup() {
  size(600, 400, P3D);
  background(255);
  textAlign(CENTER, CENTER);
  textSize(32);
}
float angle = PI/9;
void draw() {
  background(255);
  fill(214, 50, 52);
  noStroke();
  rotateY(angle);
  ellipseMode(CENTER);
  ellipse(300, 200, 225, 225);
  fill(250, 250, 250);
  noStroke();

  ellipseMode(CENTER);
  ellipse(300, 200, 125, 125);
  fill(49, 48, 111);
  noStroke();

  rectMode(CENTER);
  rect(300, 200, 300, 50);
  fill(255);

  text("UNDERGROUND", 300, 200, 300, 50);
  angle+=0.02;
}
