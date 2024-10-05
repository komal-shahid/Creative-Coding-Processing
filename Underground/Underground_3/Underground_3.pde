void setup() {
  size(600, 400, P3D);
  background(255);
  textAlign(CENTER, CENTER);
  textSize(32);
}

void draw() {
  background(255);
  fill(214, 50, 52);
  noStroke();
  ellipseMode(CENTER);
  ellipse(mouseX, mouseY, 225, 225);
  fill(250, 250, 250);
  noStroke();
  ellipseMode(CENTER);
  ellipse(mouseX, mouseY, 125, 125);
  fill(49, 48, 111);
  noStroke();
  rectMode(CENTER);
  rect(mouseX, mouseY, 300, 50);
  fill(255);
  text("UNDERGROUND", mouseX, mouseY, 300, 50);
}
