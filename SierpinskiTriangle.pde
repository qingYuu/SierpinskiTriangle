
public void setup()
{
 size(300,300);
}
public void draw()
{
 sierpinski(0,300,300);
}
public void mouseDragged()//optional
{


}
public void sierpinski(int x, int y, int len) 
{
	color c = color(255, 255, 255);
	if(len <=20)
	{
		fill(c);
		triangle(x, y, x+len, y, x+(len/2), y-len);
	}
	else
	{
		fill(c);
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}

}