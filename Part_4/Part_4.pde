// Code 1 FA_18
// Bryan Ma

// this code uses 5 separate floats to store the positions being used to draw 5 ellipses.

// change the code so that instead of using 5 separate floats, use one array of floats.
// then loop through the array to draw the ellipses, instead of drawing them one by one.

//float x1 = 100;
//float x2 = 200;
//float x3 = 300; 
//float x4 = 400;
//float x5 = 500;

float[] drawCircles = new float[5];
void setup() {
  size(600, 600);
  noStroke();
  for(int i = 0; i<5; i++){
    drawCircles[i] = map(i,0,5, 100,width);
  }
}

void draw() {
  background(150);
  for (int i = 0; i<5; i++){
    ellipse(drawCircles[i], height/2, 70,70);
  }
  
  //ellipse(x1, height/2, 70, 70);
  //ellipse(x2, height/2, 70, 70);
  //ellipse(x3, height/2, 70, 70);
  //ellipse(x4, height/2, 70, 70);
  //ellipse(x5, height/2, 70, 70);
}
