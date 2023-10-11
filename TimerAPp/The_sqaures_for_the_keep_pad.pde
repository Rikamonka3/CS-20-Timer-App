/* Program Notes
 Demonstrates num pad as Nested FOR Loops
 Start wtih width, then error check height
 */
//
//Global Variables
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
  //
  //Population of rect() variables
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
 
  
  int minutes = currentTime / 60;
  int seconds = currentTime % 60;
  
  String timeDisplay = nf(minutes, 2) + ":" + nf(seconds, 2);
  
  text(timeDisplay, width/2, height/1/5);
  
  if (currentTime > 0) {
    currentTime--;
  } else {
    text("Time's up!", width/2, height/2 + 50);
    noLoop(); // Stop the timer
  }

 
  strokeWeight(lineWidth);
  noFill();
  stroke(255);
 rect(x0*0.5, y0/2.70, widthSquare*2,heightSquare);
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
