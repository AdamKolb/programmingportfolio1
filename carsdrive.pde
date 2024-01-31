// Adam Kolb | Oct 11 2023 | Making cars
Car c1;
Car c2;
Car c3;
Car c4;
Car c5;
Car c6;
Car c7;
Car c8;
Car c9;


void setup() {
  size(200, 200);
  c1 = new Car();
  c2 = new Car();
  c3 = new Car();
  c4 = new Car();
  c5 = new Car();
  c6 = new Car();
  c7 = new Car();
  c8 = new Car();
  c9 = new Car();
}

void draw() {
  background(0);
  c1.display();
  c1.drive();
  c2.display();
  c2.drive();
  c3.display();
  c3.drive();
  c4.display();
  c4.drive();
  c5.display();
  c5.drive();
  c6.display();
  c6.drive();
  c7.display();
  c7.drive();
  c8.display();
  c8.drive();
  c9.display();
  c9.drive();
}
