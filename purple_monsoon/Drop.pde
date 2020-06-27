class Drop {
  float x;
  float y;
  float z;
  float speed;
  float len;
  float thick;

  Drop() {
    x = random(width);
    y = random(-300, -10);
    z = random(0, 20);

    speed = random(2, 6);
    len  = map(z, 0, 20, 5, 20);
    thick = map(z, 0, 20, 1, 3);
  }

  void display() {
    stroke(200, 0, 200);
    strokeWeight(thick);
    line(x, y, x, y+len);
  }

  void fall() {
    y = y + speed;
    speed = speed + 0.2;

    if (y > height) {
      y = random(-400, -50);      
      speed = random(2, 6);
    }
  }
}
