void setup() 
{
  size(400, 300);
}

void draw() 
{
  background(18, 48, 193);
  
  if (mouseY < height/2)
  {
    if (mouseX < width/2)
    {
      fill(250, 207, 35); // colour for sun
    }
    else
    {
      fill(255,255,255);// colour for moon
    }
    ellipse(mouseX, mouseY, 80, 80);
  }
  else if (mouseX > width/2)
    {
      fill(50, 50, 15);// colour for ground
      rect(mouseX, mouseY, 80, 80);
    } else {
      
      fill(255,89,87);
      rect(mouseX, mouseY, 80, 80);
    }
  }
