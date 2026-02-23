int y; 


void setup() {
  size(300, 300);
  y = 100;
}

void draw() {
  background(0);
  strokeWeight(1);
  ellipse(150, 150, y, 100);
  y = y + 3;
  
  if (y>300) {
  y = 150;
}
}
