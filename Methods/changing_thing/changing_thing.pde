float x;// question why can we not assign these variables as int instead of float
float y;

void setup ()
{
  background(155);
  size(200,300);
  x = random(50,70);
  println(x);
  y = random(50,250);
  println(y);
}

void draw ()
{
  background(155);
  fill(255);
  ellipseMode(CENTER);
  ellipse(50,140,20,20);
  noStroke();
  rectMode(CENTER);
  rect(x,y,130,20);
  fill(0);
  ellipseMode(CENTER);
  ellipse(x,y,50,50);
}
if (=<mouseX
