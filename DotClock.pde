PVector secStart;
PVector minStart;
PVector hrStart;

void setup() {
  size(600, 300);
  
  hrStart = new PVector(100, 75);
  minStart = new PVector(100, 150);
  secStart  = new PVector(100, 225);
}

int hr;
int min;
int sec;

void draw () {
  background(0);
  
  hr = hour() % 12;
  if (hr == 0) hr = 12;
  min = minute();
  sec = second();
  
  noStroke();
  fill(175, 150, 255);
  drawDots(sec, secStart);

  fill(150, 255, 150);
  drawDots(min, minStart);
  
  fill(255, 175, 150);
  for (int l = 0; l < hr; l++) {
    ellipse(hrStart.x + 20 * l, hrStart.y, 10, 10);
  }  
}

void drawDots(int timeUnit, PVector timeVector) {
  if (timeUnit <= 20) {
    for (int i = 0; i < timeUnit; i++) {
      ellipse(timeVector.x + 20 * i, timeVector.y, 10, 10);
    }
  } else if (timeUnit <= 40) {
    for (int n = 0; n < 20; n++) {
      ellipse(timeVector.x + 20 * n, timeVector.y, 10, 10);
    }
    for (int j = 20; j < timeUnit; j++)
    ellipse(timeVector.x + 20 * (j - 20), timeVector.y + 20, 10, 10);
  } else {
    for (int m = 0; m < 20; m++) {
      ellipse(timeVector.x + 20 * m, timeVector.y, 10, 10);
    }
    for (int p = 0; p < 20; p++) {
      ellipse(timeVector.x + 20 * p, timeVector.y + 20, 10, 10);
    }
    for (int k = 40; k < timeUnit; k++) {
      ellipse(timeVector.x + 20 * (k - 40), timeVector.y + 40, 10, 10);
    }
  }
}