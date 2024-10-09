void setup()
{
  noLoop();
  size(500,500);
}
void draw()
{
  int sum = 0;
  background(30,24,28);
  for(int y=25; y<=300; y+=125){
    for(int x=14; x<=500; x+=125){
      Die die = new Die(x,y);
      die.show();
      sum+=die.roll;
    }
  }
  fill(247,246,253);
  textSize(50);
  text("Total: ",140,450);
  text(sum,290,450);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int roll;
  int myX;
  int myY;
  Die(int x, int y)
  {
    roll = (int)(Math.random()*6)+1;
    myX = x;
    myY = y;
  }
  void show()
  {
    fill(201,2,15);
    noStroke();
    rect(myX,myY,100,100);
    if (roll == 1){
      fill(41,35,41);
      ellipse(myX+50,myY+50,20,20);
    } else if (roll == 2){
      fill(41,35,41);
      ellipse(myX+20,myY+20,20,20);
      ellipse(myX+80,myY+80,20,20);
    } else if (roll == 3){
      fill(41,35,41);
      ellipse(myX+20,myY+20,20,20);
      ellipse(myX+50,myY+50,20,20);
      ellipse(myX+80,myY+80,20,20);
    } else if (roll == 4){
      fill(41,35,41);
      ellipse(myX+20,myY+20,20,20);
      ellipse(myX+20,myY+80,20,20);
      ellipse(myX+80,myY+20,20,20);
      ellipse(myX+80,myY+80,20,20);
    } else if (roll == 5){
      fill(41,35,41);
      ellipse(myX+50,myY+50,20,20);
      ellipse(myX+20,myY+20,20,20);
      ellipse(myX+20,myY+80,20,20);
      ellipse(myX+80,myY+20,20,20);
      ellipse(myX+80,myY+80,20,20);
    } else if (roll == 6){
      fill(41,35,41);
      ellipse(myX+20,myY+50,20,20);
      ellipse(myX+80,myY+50,20,20);
      ellipse(myX+20,myY+20,20,20);
      ellipse(myX+20,myY+80,20,20);
      ellipse(myX+80,myY+20,20,20);
      ellipse(myX+80,myY+80,20,20);
    }
  }
}
