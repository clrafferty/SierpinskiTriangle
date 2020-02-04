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
if (len<1){
	textSize(10);
	text("bye bye triangle",300,400);
	textSize(25);
	text("hit space for new triangle\n            don't lose it this time :(", 400, 500);
}
}
public void mouseDragged()//optional
{
x+=2;
y-=2;
len-=2;
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
public void keyPressed(){
	if(keyCode==32){
		x=0;
		y=800;
		len=800;
	}
}