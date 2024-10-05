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
  if ((mouseX > x||mouseX < x+130)&&(mouseY>y||mouseY<=y+20)){
    fill(32,71,167);
    //rectMode(CENTER);
    rect(x,y,130,20);
    }
  else{
    fill(255);
    //rectMode(CENTER);
    rect(x,y,130,20);
  }
  fill(255);
  ellipseMode(CENTER);
 // ellipse(x,y,50,50);
}
