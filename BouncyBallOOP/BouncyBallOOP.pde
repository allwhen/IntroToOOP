Ball b;                //declare a new ball called b
Ball c;
Ball[] balls= new Ball[10];

void setup() {
  size(800, 600);
  for (int i = 0; i<10;i++) {
    balls[i] = new Ball();
  }
}

void draw() {
  background(255);
  for (int j = 0; j<10; j++) {
    balls[j].display();
    balls[j].move();
    if (j%2==0) {
      balls[j].wrap();
    }
    else {
      balls[j].bounceCheck();
    }
  }
}