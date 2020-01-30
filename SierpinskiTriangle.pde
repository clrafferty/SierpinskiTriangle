int x = 0; 
int y=800;
int len=800;
public void setup()
{
size(800,800);
background(255);
}
public void draw()
{
background(255);
sierpinski(x,y,len);
x++;
y--;
len--;
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
noStroke();
fill(len,x,y);
	if(len<=10)
		triangle(x,y,x+len,y,x+len/2,y-len);
else{
	sierpinski(x,y,len/2);
	sierpinski(x+len/2,y,len/2);
	sierpinski(x+len/4,y-len/2,len/2);
}

}