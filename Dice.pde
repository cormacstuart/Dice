Die guy;
int sum = 0;
void setup()
  {
      noLoop();
      size(430,480);
  }
  void draw()
  {
    sum = 0;
    fill(140);
    rect(-10,-10,830,830);
    for (int j = 0; j < 6; j++)
  {
      for (int i = 0; i < 6; i++)
    {
      guy = new Die(40+j*70,40+i*70);
      guy.show();
      guy.roll();
    }
  }    
    fill(0);
    text("Total: " +sum,190,458);
      
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
        int dots; 
        int myX, myY;
      Die(int x, int y) //constructor
      {
          //variable initializations here\
          myX = x;
          myY = y;
          dots = 0;
      }
      void roll()
      {
          dots = (int)(Math.random()*6+1);
          fill(0);
          if (dots == 1){
            ellipse(myX,myY,5,5);
          }
          else if(dots == 2){
            ellipse(myX-9,myY-9,5,5);
            ellipse(myX+10,myY+10,5,5);
          }
          else if(dots == 3){
            ellipse(myX-9,myY-9,5,5);
            ellipse(myX+10,myY+10,5,5);
            ellipse(myX,myY,5,5);
          }
          else if(dots == 4){
            ellipse(myX-9,myY-9,5,5);
            ellipse(myX+10,myY+10,5,5);
            ellipse(myX-9,myY+10,5,5);
            ellipse(myX+10,myY-9,5,5);
          }
          else if(dots == 5){
            ellipse(myX-9,myY-9,5,5);
            ellipse(myX+10,myY+10,5,5);
            ellipse(myX-9,myY+10,5,5);
            ellipse(myX+10,myY-9,5,5);
            ellipse(myX,myY,5,5);

          }
          else{
            for (int j = 0; j < 3; j++)
            {
            for (int i = 0; i < 2; i++)
            {
              ellipse(myX-6+i*12,myY-10+j*12,5,5);
            }
            }
          }
          sum = sum + dots;
      }
      void show()
      {
          fill(220);
          rect(myX-25, myY-25, 50, 50);
          
      }
  }
