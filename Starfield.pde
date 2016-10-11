//your code here
//Particle[] particles = new Particle[505];
Particle[] particles = new Particle[1];
void setup()
{
	size(400, 400);
	background(0);
	frameRate(1);
	particles[0] = new NormalParticle();
	//for(int i = 0; i < 500; i++)
	//{
	//	particles[i] = new NormalParticle();
	//}
	//for(int i = 500; i < 504; i++)
	//{
	//	particles[i] = new JumboParticle();
	//}
	//particles[504] = new OddballParticle();
}
void draw()
{
	background(0);
	//for(int i = 0; i < 505; i++)
	//{
	//	particles[i].move();
	//	particles[i].show();
	//}
	particles[0].move();
	particles[0].show();
}
class NormalParticle implements Particle
{
	int myX, myY, nSize;
	double nDirection, nSpeed;
	NormalParticle()
	{
		move();
		show();
	}
	public void show()
	{
		
		fill(255);
		myX = (int)(Math.random()*401);
		myY = (int)(Math.random()*401);
		nSize = (int)(Math.random()*11)+2;
		ellipse(myX, myY, nSize, nSize);
		
	}
	public void move()
	{
		nDirection = Math.random()*2*Math.PI;
		nSpeed = Math.random();
		myX = myX + (int)(Math.cos(nDirection)*nSpeed);
		myY = myY + (int)(Math.sin(nDirection)*nSpeed);
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
	int myX, myY, nSize;
	OddballParticle()
	{
		show();
		move();
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
	public void show()
	{
		nSize = 50;
		rect(myX, myY, nSize, nSize);
	}
	
}
class JumboParticle extends NormalParticle //uses inheritance
{
	//your code here
	JumboParticle()
	{
		nSize = (int)(Math.random()*1000);
	}
}

