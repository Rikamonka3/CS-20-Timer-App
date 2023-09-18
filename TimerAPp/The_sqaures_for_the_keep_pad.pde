/* Program Notes
 Demonstrates num pad as Nested FOR Loops
 Start wtih width, then error check height
 */
//
//Global Variables
int moved = 0;
int dragged = 0;
int clicked = 0;
int pressed = 0;
int released= 0;
int appWidth, appHeight; //CAUTION: decimals are truncated in ints, not floats or doubles
float widthSquare, heightSquare;
float x0, x1, x2;
float y0, y1, y2, y3, y4;
//
void setup() {
  size (400, 600);
  appWidth = width;
  appHeight = height;
  //
  //Population of rect() variables
  widthSquare = 1;
  heightSquare = 1;
  x0 = 1;
  x1 = 1;
  x2 = 1;
  y0 = 1;
  y1 = 1;
  y2 = 1;
  y3 = 1;
  y4 = 1;
  size(400, 400);
  font = createFont("Arial", 48);
  textFont(font);
  textAlign(CENTER, CENTER);
  frameRate(1); 
}

  //
  //Nested FOR, reading rect() arrays
  //
 //End setup
//


void draw() {
 
  background(255);
   background(220);
  fill(0);
  
  int minutes = currentTime / 60;
  int seconds = currentTime % 60;
  
  String timeDisplay = nf(minutes, 2) + ":" + nf(seconds, 2);
  
  text(timeDisplay, width/2, height/2);
  
  if (currentTime > 0) {
    currentTime--;
  } else {
    text("Time's up!", width/2, height/2 + 50);
    noLoop(); // Stop the timer
  }

  float startAngle = 0;
  float endAngle = radians(angle);

  // Calculate the coordinates for the circle's center
  float centerX = width / 2;
  float centerY = height / 2;

  // Draw the hollow circle
  stroke(52, 152, 219);
  strokeWeight(lineWidth);
  noFill();
  arc(centerX, centerY, circleRadius * 2, circleRadius * 2, startAngle, endAngle);

  angle += 10; // Increase the angle to make the circle open

  if (angle > 360) { // Adjust the limit as needed
    angle = 0; // Reset the circle
  }

  rect(x0, y0, widthSquare, heightSquare);
  rect(x0, y1, widthSquare, heightSquare);
  rect(x0, y2, widthSquare, heightSquare);
  rect(x0, y3, widthSquare, heightSquare);
  rect(x1, y0, widthSquare, heightSquare);
  rect(x1, y1, widthSquare, heightSquare);
  rect(x1, y2, widthSquare, heightSquare);
  rect(x1, y3, widthSquare, heightSquare);
  rect(x2, y0, widthSquare, heightSquare);
  rect(x2, y1, widthSquare, heightSquare);
  rect(x2, y2, widthSquare, heightSquare);
  rect(x2, y3, widthSquare, heightSquare);
} //End draw
//

void mouseMoved() {
  moved++;
}
void mouseDragged() {
  dragged++;
}
void mousePressed() {
  pressed++;
}
void mouseReleased() {
  released++;
}
void mouseClicked() {
  clicked++;  
}
void keyPressed() {
  if (key == 'r' || key == 'R') {
  
    currentTime = startTime;
    loop(); 
  }
}
