float angle = 0;
float circleRadius = 100;
float lineWidth = 10;



void draw() {
  background(255);

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

  angle += 1; // Increase the angle to make the circle open

  if (angle > 360) { // Adjust the limit as needed
    angle = 0; // Reset the circle
  }
}
