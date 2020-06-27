class Thunder {
  float x;
  float y;
  float prob;

  Thunder() {
    x = random(50, width-50);
    y = random(20, 50);
    //prob = random(0, 1);
  }

  void display() {
    prob = random(0, 10);
    if (prob < 0.1) {

      x = random(50, width-50);
      y = random(20, 50);
      noStroke();
      fill(100, 0, 100);

      beginShape();    
      vertex(x, y);
      vertex(x-10, y+30);
      vertex(x-2, y+30);
      vertex(x-10, y+75);
      vertex(x+8, y+25);
      vertex(x-1, y+25);
      vertex(x, y);
      endShape();
    } else {
    }
  }
}
