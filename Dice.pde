void setup()
{
  noLoop();
  size(500, 500);
}

void draw()
{
  background(219, 131, 141);
  for(int y = 20; y <= 500; y += 120)
  {
    for(int x = 20; x <= 500; x += 120)
    {
      Die bob = new Die(x,y);
      bob.show();
      bob.roll();
    }
  }
}

void mousePressed()
{
  redraw();
}

class Die
{
  int myDots = (int)(Math.random() * 6) + 1;
  //variables for position of dice
  int myX, myY;
  Die(int x, int y)
  { 
    myX = x;
    myY = y;
    roll();
  }
  
  //function for dice rolling
  void roll()
  {
    if (myDots == 1)
    {
      fill(0);
      ellipse(myX + 51, myY + 52, 20, 20);
    }
    else if (myDots == 2)
    {
      fill(0);
      ellipse(myX + 20, myY + 20, 20, 20);
      ellipse(myX + 85, myY + 75, 20, 20);
    }
    else if (myDots == 3)
    {
      fill(0);
      ellipse(myX + 20, myY + 20, 20, 20);
      ellipse(myX + (20 + 85)/2, myY + (20 + 75)/2, 20, 20);
      ellipse(myX + 85, myY + 75, 20, 20);
    }
    else if (myDots == 4)
    {
      fill(0);
      ellipse(myX + 20, myY + 20, 20, 20);
      ellipse(myX + 83, myY + 20, 20, 20);
      ellipse(myX + 85, myY + 75, 20, 20);
      ellipse(myX + 20, myY + 75, 20, 20);
    }
    else if (myDots == 5)
    {
      fill(0);
      ellipse(myX + 20, myY + 20, 20, 20);
      ellipse(myX + 83, myY + 20, 20, 20);
      ellipse(myX + 85, myY + 75, 20, 20);
      ellipse(myX + 20, myY + 75, 20, 20);
      ellipse(myX + (20 + 85) / 2, myY + (20 + 75)/2, 20, 20);
    }
    else if (myDots == 6)
    {
      fill(0);
      ellipse(myX + 20, myY + 20, 20, 20);
      ellipse(myX + 83, myY + 20, 20, 20);
      ellipse(myX + 85, myY + 75, 20, 20);
      ellipse(myX + 20, myY + 75, 20, 20);
      ellipse(myX + 20, myY + (20 + 75)/2, 20, 20);
      ellipse(myX + 83, myY + (20 + 75)/2, 20, 20);
    }
  }
  
  //what to show/draw
  void show()
  {
    //dice square
    noStroke();
    fill(255);
    rect(myX, myY, 100, 100, 40);
  }
}
