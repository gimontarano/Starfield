//your code here
void setup()
{
	//your code here
	size(400, 400);
}
void draw()
{
	//your code here

}
class NormalParticle implements Particle
{
	//your code here
	color cNormal;
	double myX, myY, nSize, nDirection, nSpeed;
	NormalParticle()
	{
		cNormal = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
		move();
		show();
	}
	public void show()
	{
		fill(cNormal);
		myX = (double)(Math.random()*401);
		myY = (double)(Math.random()*401);
		nSize = (double)(Math.random()*11)+2;
		ellipse(myX, myY, nSize, nSize);
	}
	public void move()
	{
		nDirection = (double)(Math.random()*2*Math.PI);
		nSpeed = (double)(Math.random()*11);
		myX = myX + Math.cos(nDirection)*nSpeed;
		myY = myY + Math.sin(nDirection)*nSpeed;
	}
}
interface Particle
{
	//your code here
	public void show();
	public void move();
}
class OddballParticle implements Particle //uses an interface
{
	//your code here
	double nSize;
	int myX, myY;
	OddballParticle()
	{
		show();
		move();
	}	
	public void show()
	{
		nSize = Math.random()*51+50;

	}
	public void move()
	{
		myX = -50;
		myY = -50;
		myX++;
		myY++;
		if(myX > 450 && myY > 450)
		{
			myX = -50;
			myY = -50;
		}
	}
}
class JumboParticle extends NormalParticle //uses inheritance
{
	//your code here
}

