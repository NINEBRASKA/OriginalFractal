int myX;
public void setup()
{
  size ( 400, 400 ); 
}
public void draw()
{
  background ( 255, 255, 255 );
  myFractal ( 200, 110, 100 );
  myFractal ( 200, 110, 50 );
}
public void mousePressed()
{
  myX = myX +1;
}
public void myFractal( int myX, int y, int green )
{
  ellipse ( myX, y, green, green );
  if ( green > 10 )
  {
    stroke ( 350, 350, 350 );
    fill ( 80,200,76 );
    myFractal ( myX+green,y, green/2 );
    myFractal ( myX-green, y, green/2 );
    myFractal ( myX, y+green, green/2 );
    myFractal ( myX, y-green, green/2 );
  }
}
