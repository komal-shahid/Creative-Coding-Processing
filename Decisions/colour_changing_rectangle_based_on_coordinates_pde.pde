
float x;
float y;

void setup() {
  size(200, 300);//size of sketch window
  x = random(0, 200);
  y = random(0, 300);
}
void draw() {
  fill(255);
  //circle(50,70,20);// remember by default coordinates 50,70 are centre of this circle
  rectMode(CENTER);
  rect(x, y, 130, 20);
  circle(x, y, 50);// remember (x,y) is centre of circle
  if (mouseX>x-65 && mouseX<x+65 && mouseY>y-10 && mouseY<y+10) {
    fill(4, 39, 131);
    rect(x, y, 130, 20);
  } else if (dist(x,y,mouseX,mouseY)<50) {
      fill(131,15,4);
      circle(x,y,50);// problem is that showing red even when not in circle for some range of the sketch window
    
  }
}
