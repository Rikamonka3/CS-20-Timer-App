int startTime = 10 * 60; 
int currentTime = startTime;
PFont font;
 int rows = 4;
  int cols = 4;
  int squareSize = width / cols ;
void setup() {
  size(400, 400);
  font = createFont("Arial", 48);
  textFont(font);
  textAlign(CENTER, CENTER);
  frameRate(1); 
}


void keyPressed() {
  if (key == 'r' || key == 'R') {
  
    currentTime = startTime;
    loop(); 
  }
}
