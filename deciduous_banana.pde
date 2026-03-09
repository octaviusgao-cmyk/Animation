//snake blowing people up
int x;
int y;
int t;
int man1x;
int Man2X;
int man1dir;
int Man2dir;

void setup() {
  size(900, 900);
  strokeWeight(5);
  x = 300;
  y = 200;
  t = 2;
  man1x = 300;
  Man2X = 400;
  man1dir = 5;
  Man2dir = -5;
}


void draw() {
  background(124, 116, 116);
  explosion();
  building(x, y);

  x = x + t;
  if (x < 298 || x > 302) {
    t = -t;
  }
  building (x - 200, y);
  window(x, 0);
  window(x, 100);
  window(x, 200);
  window(x, 300);
  window(x, 400);
  window(x, 500);
  window(x+400, 0);
  window(x+400, 100);
  window(x+400, 200);
  window(x+400, 300);
  window(x+400, 400);
  window(x+400, 500);
  


  man1x = man1x + man1dir;
  if (man1x < 0 || man1x > 900) {
    man1dir = -man1dir;
  }
  Man2X = Man2X + Man2dir;
  if (Man2X < 0 || Man2X > 900) {
    Man2dir = -Man2dir;
  }


  snake(man1x, 800);
  snake(Man2X, 800);
}



void building(int x, int y) {
  pushMatrix();
  translate(x, y);


  //building on the side
  fill(126, 86, 24);
  rect(x, 50, 200, 800);


  popMatrix();
}

void explosion() {
  pushMatrix();
  translate(450, 450);
  
  //explosion
  fill(216, 15, 46);
 
  noStroke();
  ellipse(100, -400, 500, 200);
  rect(0, -400, 200, 900);
  fill(216, 140, 15);
  rect(50, -350, 100, 800);
  stroke(0);
  
  popMatrix(); 
}

void window(int x, int y) {
  pushMatrix();
  fill(69, 198, 219);
  rect(x-80, y+260, 40, 70);
  rect(x-20, y+260, 40, 70);
  rect(x+40, y+260, 40, 70);

  popMatrix();
}

void snake(int a, int b) {

  pushMatrix();




  translate(a, b);
  scale(0.5, 0.5);
  //snake's body
  fill(19, 113, 36);
  rect(-50, 0, 100, 200);

  //arms
  fill(19, 0, 36);
  rect(-100, 0, 50, 100);
  rect(50, 0, 50, 100);

  //legs
  fill(250, 0, 0);
  rect(-50, 100, 50, 100);
  rect(0, 100, 50, 100);

  //snake's head
  fill(222, 163, 123);
  ellipse(0, 0, 100, 100 );

  //eyes
  fill(0);
  ellipse(-5, -5, 10, 10);
  ellipse(10, -5, 10, 10);

  //mouth
  line(-25, 20, 10, 20);



  popMatrix();
}
