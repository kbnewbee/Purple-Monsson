class Cloud {
  float x;
  float y;
  float vx;
  color c;

  Cloud() {
    vx = random(0.1,2); 
    x = random(0, width);
    y = random(10,50);
    c = color(random(150, 200), 0, random(150, 200));
  }
  void display() {
    noStroke();
    fill(c,25);

    ellipse(x, y, 100, 80);
    ellipse(x+50, y, 100, 80);
    ellipse(x-50, y, 120, 100);
  }

  void move() {
    x = x + vx;
    if (x > width || x < 0) {
      vx = vx*-1;
    }
  }
}
