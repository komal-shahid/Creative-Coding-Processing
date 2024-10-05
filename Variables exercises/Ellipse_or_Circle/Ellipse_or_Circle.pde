
void setup(){
  size(600,400);
  
}

float x = 0;
float y = 400;

void draw(){
  stroke(9);// can the colour of stroke be different to shape colour?
  fill(0);
  ellipse(x,y,60,60);
  x = x + 1;
  y = y - 1;
  
}
