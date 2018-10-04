// Code 1 FA_18
// Bryan Ma

// use the foundation of the last code challenge, and instead of drawing 5 ellipses, 
// draw a large number of shapes (ellipses or whatever) using a larger array to store their x positions.
// use map to affect the parameters of them being drawn, like size or color.

// once you've done that, try adding another corresponding array to store their y positions.

// finally, try modifying the values you've stored every frame to make the shapes change their positions somehow.
float [] x = new float[200];
float [] y = new float[200];
float [] x2 = new float[500];
float [] y2 = new float[500];
float [] x3 = new float[100];
float [] y3 = new float[100];

void setup() {
  size (600, 600);
  for (int i = 0; i<200; i++) {
    x[i] = map(i, 0, 200, 0, width);
    y[i] = map(i, 0, 200, 0, height);
  }
  for (int i = 0; i<500; i++) {
    x2[i] = map(i, 0, 500, 0, width);
    y2[i] = map(i, 0, 500, 0,height);
  }
  for (int i = 0; i<100; i++) {
    x3[i] = map(i, 0, 100, 0, width);
    y3[i] = map(i, 0, 100, 0,height);
  }
}

void draw() {
  background(0);
  noStroke();
  float size = map(mouseX, 0, width, 5, 10);
  for (int i = 0; i<100; i+=2) {
    ellipse(x3[i], y3[i], size+40, size+40);
    x3[i] += random(-5,5);
    float r = map(i, 0, 100, mouseX+50, x.length);
    float b = map(i, 0, 100, mouseY+50, y.length);
    fill(r, 0, b, 80);
  }
  for (int i = 0; i<200; i+=2) {
    ellipse(x[i], y[i], size, size);
    x[i] += random(-1,1);
    float r = map(i, 0, 200, mouseX, x.length);
    float b = map(i, 0, 200, mouseY, y.length);
    fill(r, 0, b);
  }
  for (int i = 0; i<500; i+=2) {
    ellipse(x2[i], y2[i], size, size);
    x2[i] += random(-5,5);
    float r = map(i, 0, 500, mouseX, x.length);
    float b = map(i, 0, 500, mouseY, y.length);
    fill(r, 0, b, 200);
  }
}
