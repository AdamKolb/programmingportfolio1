class PowUp {
  int x, y, w, diam, speed, val;
  PImage powup;
  char type;

  PowUp(int x, int y) {
    this.x = x;
    this.y = y;
    w = 6;
    diam = 80;
    speed = 5;
    int rand = int(random(3));
    if (rand == 0) {
      powup = loadImage("Ammo.png");
      type = 'a';
      val = 100;
    } else if (rand == 1) {
      powup = loadImage("health.png");
      type = 'h';
      val = 100;
    } else if (rand == 1) {
      powup = loadImage("space.png");
      type = 't';
      val = 1;

      ;
      powup = loadImage("Rock.png");
    }
  }

  void display() {
    //imageMode(CENTER);
    //powup.resize(diam, diam);
    //image(rock, x, y);
    ellipse(x, y, diam, diam);
  }

  void move() {
    y+=speed;
  }

  boolean reachedBottom() {
    if (y>height+100) {
      return true;
    } else {
      return false;
    }
  }
  boolean intesect(Rock r) {
    float d = dist(x, y, r.x, r.y);
    if (d<r.diam) {
      return true;
    } else {
      return false;
    }
  }
}
