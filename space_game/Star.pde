class Star {
  int x, y, diam, speed;

  Star(int x, int y) {
    this.x = x;
    this.y = y;
    diam = int(random(1, 5));
    speed = int(random(2, 10));
  }

  void display() {
    fill(255);
    circle(x, y, diam);
  }



  void move () {
    y+=speed;
  }

  boolean reachedBottom() {
    if (y>height) {
      return true;
    } else {
      return false;
    }
  }
}
