int color2 = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
int color3 = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));

public void setup()
{
  size(500,500);
  background(0);
  frameRate(5);
}
public void draw()
{
  noStroke();
  int color1 = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  translate(250,250);
  for(int i = 0; i <= 11; i++) {
  rotate(PI/6);
  sierpinski(0, 0, 235, color1, color2, color3);
  }
  color3 = color2;
  color2 = color1;
}

public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len, int se1, int se2, int se3) 
{
  if (len <= 5) {
    if(len <= 58 && y <= 55)
      fill(se1);
    else if(len <= 115 && y<= 115) 
     fill(se2);
    else
      fill(se3);
   triangle(x, y, x-len/2, y+len, x+len/2, y+len);
 } else {
   sierpinski(x, y, len/2,se1,se2,se3);
   sierpinski(x+len/4, y+len/2,len/2,se1,se2,se3);
   sierpinski(x-len/4, y+len/2, len/2,se1,se2,se3);
 }
}
