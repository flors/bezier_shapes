class BezierShapes{
  
  float time;
  int order;
  int size = 1;
  float f;
  int c;
  int innerLinesCounter;
  
  int innerLines;
  
  
  BezierShapes(int order){
    time = 0.0;
    this.order = order; //c
    f = 2.0;
    c = 0;
    innerLinesCounter = 0;
    
    innerLines = 4;
  }


  //Draw an animated petal at the start position (x,y) at a size
  boolean drawPetal(int xIni, int yIni, int size){

    
    //float[] half1 = curva3 (f, 30, 20, 80, 35, 80, 35, 70, 75,t, c, true);
    //float[] half2 = curva3 (f, 30, 20, 10, 80, 35, 80, 70, 75,t, c, false);
    
    float[] half1 = curva3 (f, xIni, yIni, 80, 35, 80, 35, 70, 75,time, c, true);
    float[] half2 = curva3 (f, xIni, yIni, 10, 80, 35, 80, 70, 75,time, c, false);
    float x = half1[0];
    float y = half1[1];
    
    float x1 = half2[0];
    float y1 = half2[1];
    
    
    
    ellipse(x, y, 2, 2);
    ellipse(x1, y1, 2, 2);
    time += 0.01;
    
    if(time > 1)
    {
      println(innerLinesCounter);
      innerLinesCounter++;
      time = 0;
      c += 7;
    }
    
    
    /*if(c == 28)
    {
     c = 0;
     background(255);
    } */
    
    if(innerLinesCounter >= innerLines){
      return false;
    }else{
      return true;
    }
    

  }
  
  
  float[] curva3(float f, int x_ini, int y_ini, int control_x_ini, int control_y_ini, int control_x_fin, int control_y_fin, int x_fin, int y_fin, float t, int c, boolean upHalf){
      //curva3 dibuja curvas Bezier cúbicas (punto inicial, punto final, con sus correspondientes puntos de control
      //devuelve un array con los valores calculados de "x" e "y" de acuerdo con el valor del "tiempo" que recibe
    float xy[] = new float[2];
    
     if(upHalf){ 
      float x =  x_ini*f * pow((1-t), 3) + (control_x_ini-c)*f * 3 * pow((1-t), 2) * t + (control_x_fin-c)*f * 3 * (1 - t) * pow(t, 2) + x_fin*f * pow(t, 3);
      float y =  y_ini*f * pow((1-t), 3) + (control_y_ini+c)*f * 3 * pow((1-t), 2) * t + (control_y_fin+c)*f * 3 * (1 - t) * pow(t, 2) + y_fin*f * pow(t, 3);  
      xy[0] = x;
      xy[1] = y;
     }else{
      float x =  x_ini*f * pow((1-t), 3) + (control_x_ini+c)*f * 3 * pow((1-t), 2) * t + (control_x_fin+c)*f * 3 * (1 - t) * pow(t, 2) + x_fin*f * pow(t, 3);
      float y =  y_ini*f * pow((1-t), 3) + (control_y_ini-c)*f * 3 * pow((1-t), 2) * t + (control_y_fin-c)*f * 3 * (1 - t) * pow(t, 2) + y_fin*f * pow(t, 3);  
      xy[0] = x;
      xy[1] = y;
       
     
     }
    
    return xy;
  
  }

}
