int startX = 0, startY = 250, endX = 0, endY = 250;
int re = 0, gr = 0, bl = 0;
int dimX = 1000, dimY = 500;

void setup(){
  size(dimX,dimY);
  background(0,0,0);
  strokeWeight(1);
  frameRate(60);
}

void draw(){
  fill(0,0,0,30);
  rect(0,0,dimX,dimY);
  re = (int)(100*Math.random());
  gr = (int)(255*Math.random());
  bl = (int)(100*Math.random());
  stroke(re,gr,bl);
}

void keyPressed(){
  mousePressed();
}

void mousePressed(){
  while(endX<dimX){
    endX += (int)(2*Math.random() + 1);
    endY += (int)(10*Math.random() - 5); 
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
  startX = 0;
  startY = 250;
  endX = 0;
  endY = 250;
}
