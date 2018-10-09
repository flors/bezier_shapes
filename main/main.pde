
BezierShapes b;  
boolean isDrawing = true;

void setup(){
  size(400,400);
  strokeWeight(1);
  background(255);
  fill(0);  
  stroke(0,0,0);
  
  b = new BezierShapes(2);
  
 
}


void draw(){

  
  
  if(isDrawing){
    isDrawing = b.drawPetal(30,20, 1);
  }
  
    
    /*float x =  30*f * pow((1-t), 3) + (80-c)*f * 3 * pow((1-t), 2) * t + (80-c)*f * 3 * (1 - t) * pow(t, 2) + 70*f * pow(t, 3);
    float y =  20*f * pow((1-t), 3) + (10+c)*f * 3 * pow((1-t), 2) * t + (35+c)*f * 3 * (1 - t) * pow(t, 2) + 75*f * pow(t, 3);
    float x1 = 30*f * pow((1-t), 3) + (10+c)*f * 3 * pow((1-t), 2) * t + (35+c)*f * 3 * (1 - t) * pow(t, 2) + 70*f * pow(t, 3);
    float y1 = 20*f * pow((1-t), 3) + (80-c)*f * 3 * pow((1-t), 2) * t + (80-c)*f * 3 * (1 - t) * pow(t, 2) + 75*f * pow(t, 3);*/
    

}
