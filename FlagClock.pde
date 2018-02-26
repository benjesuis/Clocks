void setup() {
  size(600, 600);
  
  rectMode(CENTER);
}

int hr;
int min;
int sec;
float col1;
float col2;
float col3;

void draw () {
  background(0);
  colorMode(HSB);

  hr = hour() % 12;
  if (hr == 0) hr = 12;
  min = minute();
  sec = second();
  
  col1 = map(sec, 0, 60, 0, 255);
  col2 = map(min, 0, 60, 0, 255);
  col3 = map(hr, 0, 12, 0, 255);
  
  translate(width / 2, height / 2);
  fill(col1, 255, 255);
  stroke(col1, 255, 255);
  rect(0, 100, 300, 100);
  
  fill(col2, 255, 255);
  stroke(col2, 255, 255);
  rect(0, 0, 300, 100);
  
  fill(col3, 255, 255);
  stroke(col3, 255, 255);
  rect(0, -100, 300, 100);
}