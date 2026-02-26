//witcher 3 wraith
int djinn;
int x;
int t;
int y;

void setup() {
  size(900, 900);
  strokeWeight(5);
  x = -108;
  t = 4;
  y = 50;
}

void draw () {
  background(77, 209, 34);
  djinn();
}

void djinn() {
  translate (450, 450);


    //neck
  fill(211, 157, 115);
  rect(-115, -100, 30, 50);
  
  
  //head
  fill(211, 157, 115);
  ellipse(-100, -150, 100, 100);
  
  //body
  fill(211, 157, 115);
  rect(-200, -50, 200, 300);
  
  //arms
  fill(211, 157, 115);
  rect(-400, 0, 200, x);
  rect(0, 0, 200, x);
  
  //legs
  fill(229, 16, 16);
  rect(-150, 250, y, 100);
  rect(-90, y, 100, 100);

    
  //tongue
  fill(188, 72, 109);
  triangle(-80, -130, x, -70, -120, -130);
  x = x + t;
  if (x < -158 || x > -58  ) {
    t = -t;
  }
  


}
