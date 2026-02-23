//Arkham city is cool

//built in variables:
//mouseX and mouseY, coordinates for mouse pointer


int x; 


void setup() {
  size(300, 300);
  x=0;
  //set the starting value
  
} // end of setup

void draw() {
  background(0);
  strokeWeight(1);
  ellipse(x, 150, 100, 100);
  x = x + 5;
  
  if (x>300) {
  x = 0;
}
} // end of draw
