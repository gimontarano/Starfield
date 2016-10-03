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
class NormalParticle
{
	//your code here
	color cNormal;
	double myX, myY, nSpeed, nDirection, nSize;
	NormalParticle()
	{
		cNormal = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
		myX = Math.random()*401;
		myY = Math.random()*401;
		nSpeed = Math.random()*11;
		nSize = Math.random()*10+10;
	}
	void show()
	{
		fill(cNormal);
		ellipse(myX, myY, nSize, nSize);
	}
	void move()
	{
		
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

