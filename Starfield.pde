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
	double myX, myY, nSpeed, nSize, nDirection;
	NormalParticle()
	{
		cNormal = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
		nSpeed = Math.random()*11;
		move();
		show();
	}
	public void show()
	{
		fill(cNormal);
		myX = Math.random()*401;
		myY = Math.random()*401;
		nSize = Math.random()*11+2;
		ellipse(myX, myY, nSize, nSize);
	}
	public void move()
	{
		nDirection = Math.random()*2*Math.PI;
		myX = myX + Math.cos(ayyy)*nSpeed;
		myY = myY + Math.sin(ayyy)*nSpeed;
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
	double nSpeed, nSize;
	OddballParticle()
	{
		nSize = 
	}
}
class JumboParticle //uses inheritance
{
	//your code here
}

