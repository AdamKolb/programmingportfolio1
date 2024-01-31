class Rock {
  int x, y, w, diam, speed;
  PImage rock;

  Rock(int x, int y) {
    this.x = x;
    this.y = y;
    w = 6;
    diam = int(random(30, 100));
    speed = int(random(3, 12));
    ;
    rock = loadImage("Rock.png");
  }


  void display() {
    imageMode(CENTER);
    rock.resize(diam, diam);
    image(rock, x, y);
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
    float d = dist(x,y,r.x,r.y);
    if(d<r.diam) {
      return true;
    } else {
     return false;
  }
}
}
