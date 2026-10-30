PImage cara;
class Globo
{
  float x, y,vx,vy;
  color c;
  Globo (float _x, float _y)
  {
   x=_x;
   y=_y; 
   vx=random(-0.25,0.25);
   vy=random(-2,-0.5);
   c = color(random(0,255),random(0,255),random(0,255));
  }

  void update()
  {
    y+=vy;
    x+=vx;
  }

  void dibujate()
  {
      fill(c);
      rectMode(CENTER);
      rect(x,y,80,100);
      imageMode(CENTER);
      image(cara,x,y,70,90);
      
  }
  
}

ArrayList<Globo> globos;


void setup()
{
  //size(1000,1000);
  size(640,480);
  globos = new ArrayList<Globo>();
  cara = loadImage("donalnd.png");
  image(cara,0,0);
}

void draw()
{
  background(75,155,225);
  image(cara,0,0);
  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();
  }
}

void mousePressed()
{
  globos.add(new Globo(mouseX,mouseY));
}
