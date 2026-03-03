//snake blowing people up
int x;
int y;
int t;
int a;
int b;
int z;
int l;

void setup() {
  size(900, 900);
  strokeWeight(5);
  x = 300;
  y = 200;
  t = 2;
  a = 300;
  b = 400;
  z = 2;
  l = 2;
}


void draw() {
  background(124, 116, 116);
  building(x, y);

  x = x + t;
  if (x < 298 || x > 302) {
    t = -t;

   a = a + z;
   if (a < 302 || a < 298) {
      z = -z;
   }
   b = b + l;
   if (b > 402 || b < 398) {
   l = -l;
    
  }

  building (x - 200, y);
  

  snake(a, b);
  }
}


void building(int x, int y) {
  pushMatrix();
  translate(x, y);


  //building on the side
  fill(126, 86, 24);
  rect(x, 50, 200, 800);
  popMatrix();
}

void snake(int a, int b) {
  pushMatrix();
  translate(a, b);

  //snake's body
  fill(19, 113, 36);
  rect(-50, 0, 100, 200);

  //arms
  fill(19, 113, 36);
  rect(-100, 0, 50, 100);
  rect(50, b, 50, 100);


  //snake's head
  fill(222, 163, 123);
  ellipse(0, 0, 100, 100 );



  popMatrix();
}
