//Variables specific to WPchart

float[] WP;

float minWP;
float maxWP;

class WPchart extends Chart{
  
  float x1 = X1_BR;
  float x2 = X2_BR;
  float y1 = Y1_BR;
  float y2 = Y2_BR; 
  
  // constructors
  WPchart(){
    super();
  }
  
  // methods
  // This is inheritance implementation
  
  void drawRect(float x1, float y1, float x2, float y2){
    //super.drawRect(x1,y1,x2,y2);
    rectMode(CORNERS);
    noStroke();
    fill(255);
    rect(x1, y1, x2, y2);
  }
  
  void lineGraph(float[] data, float yMin, float yMax, float x1, float y1, float x2, float y2, float r, float g, float b){
    stroke(r, g, b);
    beginShape();
    for (int i=0; i < data.length; i++){
      float x = map(i, 0, data.length-1, x1, x2);
      float y = map(data[i], yMin, yMax, y2, y1);
    vertex(x, y);
    }
  endShape();
  }
  
  void barGraph(float[] data, float yMin, float yMax, float x1, float y1, float x2, float y2, float r, float g, float b){
    fill(r, g, b);    
    for (int i=0; i < data.length; i++){
      rect(i * 8, y1, 8, -data[i] * 10); 
    }
  endShape();
  }
  
  void drawXLabels(float min, float max, float spread, float x1, float x2, float y2){
    fill(255);
    textSize(15);
    textAlign(CENTER);
    stroke(255);
  
    for (float i=min; i <= max; i += spread){
      float x = map(i, min, max, x1, x2);
      text(floor(i), x, y2 + 15);
      line(x, y2, x, y2 + 3);
      }
    textSize(20);
    text("Games Played", width*.75, y2 + 35); 
  }
  
  void drawYLabels(float min, float max, float x1, float y1, float y2){
    fill(255);
    textSize(15);
    textAlign(RIGHT);
    stroke(255);
  
  for (float i=min; i <= max; i += 0.1){
    float y = map(i, 0.0, 1.0, y2, y1);
    text(i, x1 - 20, y);
    line(x1 , y, x1 - 5, y);
    }
  textSize(18);
//  text("Winning Percentage", X1_BR-40, height/2); 
  }
  
  void drawLegend(float x, float y, float x2, float y2){
    textSize(25);
    textAlign(RIGHT);
    text("Astros Winning Percentage by Games Played", x2, y - 10);
    textSize(15);
    textAlign(RIGHT, BOTTOM);
    text("Source: www.baseball-reference.com", x2 - 20, y2 + 40);
  }
}