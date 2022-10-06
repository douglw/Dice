//PFont lefont;
void setup()
  {
      size(402,450);
      noLoop();
  }
  void draw()
  {
      background(#FF7979);
      //lefont = createFont("LemonMilk.otf",40);
      int sum = 0;
      for(int y = 15; y <= 402; y = y + 134){
        for(int x = 15; x <= width; x = x + 134){
          Die die = new Die (x,y);
          die.roll();
          die.show();
          sum = sum + die.roll;
        }
      }
      fill(#F0EDED);
      rect(13,395,215,39);
      //textFont(lefont);
      fill(#3E3B3B);
      text("Total: " + sum, 15,430); 
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int roll, myX, myY;
     
      Die(int x, int y) //constructor
      {
          roll();
          myX = x;
          myY = y;
      }
      void roll()
      {
        roll = (int)(Math.random()*6);
      }
      void show()
      {
          fill(#F0EDED);
          strokeWeight(2);
          rect(myX,myY,100,100,10);
          if(roll == 0){
              fill(#3E3B3B);
              ellipse(myX+50,myY+50,20,20);
          }
          if(roll == 1){ //replace 200 w/ myX and myY
              fill(#3E3B3B);
              ellipse(myX+20,myY+20,20,20);
              ellipse(myX+80,myY+80,20,20);
          }
          if(roll == 2){
              fill(#3E3B3B);
              ellipse(myX+20,myY+20,20,20);
              ellipse(myX+50,myY+50,20,20);
              ellipse(myX+80,myY+80,20,20);
          }
          if(roll == 3){
              fill(#3E3B3B);
              ellipse(myX+20,myY+20,20,20);
              ellipse(myX+20,myY+80,20,20);
              ellipse(myX+80,myY+20,20,20);
              ellipse(myX+80,myY+80,20,20);
          }
          if(roll == 4){
              fill(#3E3B3B);
              ellipse(myX+20,myY+20,20,20);
              ellipse(myX+20,myY+80,20,20);
              ellipse(myX+50,myY+50,20,20);
              ellipse(myX+80,myY+20,20,20);
              ellipse(myX+80,myY+80,20,20);
         }
         if(roll == 5){
              fill(#3E3B3B);
              ellipse(myX+20,myY+20,20,20);
              ellipse(myX+20,myY+80,20,20);
              ellipse(myX+80,myY+20,20,20);
              ellipse(myX+80,myY+80,20,20);
              ellipse(myX+20,myY+50,20,20);
              ellipse(myX+80,myY+50,20,20);
         }
      }
  }
