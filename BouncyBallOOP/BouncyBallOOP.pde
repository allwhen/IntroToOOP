Ball b;                //declare a new ball called b
Ball c;
Ball[] balls= new Ball[100];

void setup() {
  size(800, 600);
  b = new Ball(420);      //initialize b as a new object of the Ball class
  c = new Ball(40);
}

void draw() {
  background(255);
  b.display();         //call b's display() method
  c.display();
  b.move();
  b.bounceCheck();
  c.move();
  c.wrap();
}