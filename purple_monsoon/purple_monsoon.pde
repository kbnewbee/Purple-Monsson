Drop[] drops = new Drop[500];
Cloud[] clouds = new Cloud[50];
Thunder[] thunder = new Thunder[5];

void setup() {
  size(600, 600);
  
  for (int i=0; i<thunder.length; i++) {
    thunder[i] = new Thunder();
  }

  for (int i=0; i<clouds.length; i++) {
    clouds[i] = new Cloud();
  }

  for (int i=0; i<drops.length; i++) {
    drops[i] = new Drop();
  }
}

void draw() {
  background(230);

  for (int i=0; i<drops.length; i++) {
    drops[i].display();
    drops[i].fall();
  }
  for (int i=0; i<clouds.length; i++) {
    clouds[i].display();
    clouds[i].move();
  }
  for (int i=0; i<thunder.length; i++) {
    thunder[i].display();
  }
}
