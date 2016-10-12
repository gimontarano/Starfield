//your code here
Particle[] particles = new Particle[505];
//Particle bob;
void setup()
{
	size(400, 400);
	background(0);
	frameRate(10);
	//bob = new JumboParticle();
	for(int i = 0; i < 500; i++)
	{
		particles[i] = new NormalParticle();
	}
	for(int i = 500; i < 504; i++)
	{
		particles[i] = new JumboParticle();
	}
	particles[504] = new OddballParticle();
}
void draw()
{
	background(0);
	for(int i = 0; i < 505; i++)
	{
		particles[i].move();
		particles[i].show();
	}
	
	//bob.move();
	//bob.show();
	
}
class NormalParticle implements Particle
{
	protected int myX, myY, nSize;
	protected double nDirection, nSpeed;
	NormalParticle()
	{
		myX = 200;
		myY = 200;
		nDirection = Math.random()*2*Math.PI;
		nSpeed = (int)(Math.random()*21);
		nSize = (int)(Math.random()*11)+2;
	}
	public void move()
	{
		myX += (int)(Math.cos(nDirection)*nSpeed);
		myY += (int)(Math.sin(nDirection)*nSpeed);
	}
	public void show()
	{
		
		fill(255);
		
		ellipse(myX, myY, nSize, nSize);
		
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
	private int myX, myY;
	OddballParticle()
	{
		show();
		myX = -50;
		myY = -50;
	}	
	public void move()
	{
		myX += 10;
		myY += 10;
		if(myX > 450 && myY > 450)
		{
			myX = -50;
			myY = -50;
		}
	}
	public void show()
	{
		fill(255);
		rect(myX, myY, 10, 10);
	}
	
}
class JumboParticle extends NormalParticle //uses inheritance
{
	//your code here
	JumboParticle()
	{
		nSize = (int)(Math.random()*10)+0;
	}
}

