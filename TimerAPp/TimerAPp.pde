int startTime = 10 * 60; 
int currentTime = startTime;
PFont font;

void setup() {
  size(400, 200);
  font = createFont("Arial", 48);
  textFont(font);
  textAlign(CENTER, CENTER);
  frameRate(1); 
}

void draw() {
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
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
  
    currentTime = startTime;
    loop(); 
  }
}
