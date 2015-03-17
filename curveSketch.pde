float theta=0;
 
void setup() {
  size(700, 700);
  background(0);
  smooth();
  colorMode(HSB);
}
 
void draw() {
  //translate(width/2, height/2);
  drawPattern();
}

void drawPattern(){
  noStroke();
  fill(0,30);
 filter(DILATE);
 //filter(BLUR,0.6);
  rect(0, 0, width, height);
  strokeWeight(20);
  theta+=0.2;
  //int n=50;
 // int kom=30;
  float angle=(2*PI)/50;
  noFill();
  stroke(230);
 
translate(150,300);
  
  for (int j=0;j<50;j++) {
    beginShape();
    pushMatrix();
    rotate((angle*j));

    for (int i=-1;i<30;i++) {
       rotate((-angle*i));
      float c=map(i*j, 0, 36*30, 0, 300);
      stroke( mouseX, mouseY,mouseX + mouseY);
      curveVertex(tan(theta-j)*j, j*20);
    }
    endShape();
    popMatrix();
  }
  //translate(350,-100);
}
