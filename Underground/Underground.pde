
void setup()
{
  size(600, 400);
  textAlign(CENTER,CENTER);
  textSize(32);
}
void draw()
{
  fill(196,63,63);
  noStroke();
  circle(width/2,height/2,300);
  fill(252);
  circle(width/2,height/2,200);
  rectMode(CENTER);
  fill(46,81,126);
  rect(width/2,height/2,330,50);
  fill(225);
  text("UNDERGROUND",width/2, height/2,330,50);
}
  
