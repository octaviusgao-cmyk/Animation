//witcher 3 wraith
int djinn;
int x;
int t;

void setup() {
  size(900, 900);
  strokeWeight(5);
  x = -108;
  t = 4;
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
    
  //tongue
  fill(188, 72, 109);
  triangle(-80, -130, x, -70, -120, -130);
  x = x + t;
  if (x < -158 || x > -58  ) {
    t = -t;
  }
  


}
