void settings() {
  size(600, 600);
}

float cx;
float cy;

float hr;
float min;
float sec;

void draw () {
  background(0);
  cx = width * 0.5;
  cy = height * 0.5;
  translate(cx, cy);
  rotate(-HALF_PI);
  
  hr = hour() % 12;
  if (hr == 0) hr = 12;
  min = minute();
  sec = second();
  
  noFill();
  stroke(150, 255, 100);
  strokeWeight(8);
  float secAngle = map(sec, 0, 60, 0, TWO_PI);
  arc(0, 0, 405, 405, 0, secAngle);
  
  stroke(100, 150, 255);
  float minAngle = map(min, 0, 60, 0, TWO_PI);
  arc(0, 0, 380, 380, 0, minAngle);
  
  stroke(255, 100, 150);
  float hrAngle = map(hr, 0, 12, 0, TWO_PI);
  arc(0, 0, 355, 355, 0, hrAngle);
}