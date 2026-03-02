//snake blowing people up
int x;
int y;
int t;

void setup() {
  size(900, 900);
  strokeWeight(5);
  x = 300;
  y = 200;
  t = 2;
}

void draw() {
  background(124, 116, 116);
  building(x, y);
  
   x = x + t;
  if (x < 298 || x > 302) {
    t = -t;
  }
  
  building (x - 200, y);
  
}


void building(int x, int y) {
  pushMatrix();
  translate(x, y);


  //building on the side
  fill(126, 86, 24);
  rect(x, 200, 200, 500);
  popMatrix();
 
}
