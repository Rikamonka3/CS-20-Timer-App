/* Program Notes
 Demonstrates num pad as Nested FOR Loops
 Start wtih width, then error check height
 */
//
//Global Variables
int circleX, circleY;
int circleSize = 93;
color rectColor;
color circleColor;
color baseColor;
boolean rectOver = false;
boolean circleOver = false;
PImage Backanime;
int numPadColumns = 3;
float [] x = new float[numPadColumns];
int numPadRow = 5;
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
  size (365, 550);
  appWidth = width;
  appHeight = height;
  //uwu
  //Population of rect() variables
  rectColor = color(0);
  circleColor = color(255);
  baseColor = color(102);
  circleX = width/2+circleSize/2+10;
  circleY = height/2;
  ellipseMode(CENTER);
  Backanime =loadImage("Anime.jpg");
  background(Backanime);
  widthSquare = appWidth*1/4;
  heightSquare = widthSquare;
  x0 = widthSquare*2/1;
  x1 = widthSquare*2/2;
  x2 = widthSquare*6/2;
  y0 = widthSquare*5/2;
  y1 = widthSquare*7/2;
  y2 = widthSquare*9/2;
  y3 = widthSquare*11/2;
  y4 = widthSquare*14/2;
  //
  y5=;
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
  strokeWeight(lineWidth);
  noFill();
  stroke(255);
  rect(x0*0.5, y0/2.70, widthSquare*2, heightSquare);
  ellipse(x0, y0, widthSquare, heightSquare);
  ellipse(x0, y1, widthSquare, heightSquare);
  ellipse(x0, y2, widthSquare, heightSquare);
  ellipse(x0, y3, widthSquare, heightSquare);
  ellipse(x1, y0, widthSquare, heightSquare);
  ellipse(x1, y1, widthSquare, heightSquare);
  ellipse(x1, y2, widthSquare, heightSquare);
  ellipse(x1, y3, widthSquare, heightSquare);
  ellipse(x2, y0, widthSquare, heightSquare);
  ellipse(x2, y1, widthSquare, heightSquare);
  ellipse(x2, y2, widthSquare, heightSquare);
  ellipse(x2, y3, widthSquare, heightSquare);
  update(mouseX, mouseY);


} //End draw
//
void update(int x, int y) {
  if ( overCircle(circleX, circleY, circleSize) ) {
    circleOver = true;
    rectOver = false;
  }
    circleOver = false;
  } 

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}



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
