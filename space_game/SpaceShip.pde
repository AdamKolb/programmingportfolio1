class SpaceShip {
  int x, y, w, health, ammo, turretCount;
  PImage ship;

  SpaceShip(int x, int y) {
    this.x = x;
    this.y = y;
    w = 75;
    health = 100;
    ammo = 50;
    turretCount = 1;
    ship = loadImage("space.png");
    ship.resize(100, 100);
  }
  void display() {
    rectMode(CENTER);
    fill(0, 255, 255);
    image(ship, x, y);

    //fill(random(0,255),random(0,255),50);
    //fill(225,150,56);
    //ellipse(mouseX-0,mouseY-0,x+15,y+60);
    //fill(240,38,54);
    //ellipse(mouseX-0,mouseY-5,x+10,y+10);
    //ellipse(mouseX-1,mouseY-5,x+10,y+10);
    //ellipse(mouseX-2,mouseY-5,x+10,y+10);
    //ellipse(mouseX-3,mouseY-5,x+10,y+11);
    //ellipse(mouseX-4,mouseY-5,x+10,y+12);
    //ellipse(mouseX-5,mouseY-5,x+10,y+13);
    //ellipse(mouseX-6,mouseY-5,x+10,y+14);
    //ellipse(mouseX-7,mouseY-5,x+10,y+15);
    //ellipse(mouseX-8,mouseY-5,x+10,y+16);
    //ellipse(mouseX-9,mouseY-5,x+10,y+17);
    //ellipse(mouseX-10,mouseY-5,x+10,y+18);
    //ellipse(mouseX-11,mouseY-5,x+10,y+19);
    //ellipse(mouseX-12,mouseY-5,x+10,y+20);
    //ellipse(mouseX-13,mouseY-5,x+10,y+21);

    //stroke(0);
    //line(mouseX-10,mouseY+70,mouseX-10,mouseY+10);
    //line(mouseX+10,mouseY+70,mouseX+10,mouseY+10);
  }

  void move(int x, int y) {
    this.x = x;
    this.y = y;
  }
  boolean fire() {
    if (ammo>0) {
      return true;
    } else {
      return false;
    }
  }
  //void fire(Laser l) {
  //}

  boolean intersect(Rock r) {
    float d = dist (x,y,r.x,r.y);
    if(d<40) {
     return true;
    } else {
      return false;
    }
  }
   boolean intersectPU(PowUp pu) {
    float d = dist (x,y,pu.x,pu.y);
    if(d<pu.diam/2) {
     return true;
    } else {
      return false;
    }
  }
}
