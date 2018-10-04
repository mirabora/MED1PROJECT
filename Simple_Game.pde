float x, y, speedX, speedY;
float diam = 20;
float rectSize = 150;

void setup() {   //The program runs once
  fullScreen();
  fill(158,174,209);
  reset();
}

void reset () {
  x = width/2;
  y = height/2;
  speedX = random(3,5);
  speedY = random(3,5);
}

void draw() {  //the bouncing ball && the bar with size, colour and shape
  background (188,166,198); // color of the ball
  ellipse(x,y,25,25);  // the shape of the ball
  rect(0,0,20,height); //the height and width of the side bar
  rect(width-30,mouseY-rectSize/2,10,rectSize); // the moving bar
  
  x += speedX;
  y += speedY;
  
  //Once the ball hits the moving bar, it goes the opposite direction of X
  if ( x > width-30 && x < width -20 && y > mouseY-rectSize/2 && y < mouseY+rectSize/2 ) {
    speedX = speedX * -1;
  } 
  
  // if the ball hits the wall, the direction of X changes, also showcases X
  if (x<25) {
    speedX *=-1.1;
    speedY *= 1.1;
    x += speedX;
  }
  
  // If the ball hits downwards or upwards, the Y direction changes
  if (y > height || y < 0 ) {
    speedY *= -1;
  }
}
void mousePressed() {
  reset();
}
