int myX;
public void setup()
{
  size ( 400, 400 ); 
}
public void draw()
{
  background ( 255, 255, 255 );
  myFractal ( 200, 200, 200 );
  myFractal ( 200, 200, 200 );
}
public void mousePressed()
{
  myX = myX + 2;
}
public void myFractal( int myX, int y, int green )
{
  ellipse ( myX, y, green, green );
  if ( green > 10 )
  {
    stroke ( 350, 350, 350 );
    fill ( 10, 50, 100 );
    myFractal ( myX + green, y, green/2 );
    myFractal ( myX - green, y, green/2 );
    myFractal ( myX, y + green, green/2 );
    myFractal ( myX, y - green, green/2 );
  }
}
