//Variables specific to GBchart

float[] GB;

float minGM, maxGM;
float minGB, maxGB;

class GBchart extends Chart{
  
  float x1 = X1_BL;
  float x2 = X2_BL;
  float y1 = Y1_BL;
  float y2 = Y2_BL;  
    
  // constructors
  GBchart(){
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
    text("Games Played", width/2/2, y2 + 35); 
  }
  
  void drawYLabels(float min, float max, float x1, float y1, float y2){
    fill(255);
    textSize(15);
    textAlign(RIGHT);
    stroke(255);
  
  for (float i=min; i <= max; i += 1){
    float y = map(i, min, max, y2, y1);
    text(floor(i), x1 - 10, y);
    line(x1 , y, x1 - 5, y);
    }
  textSize(18);
//  text("Games Ahead/(Back)", X1_BL-40, height/2); 
  }
  
  void drawLegend(float x, float y, float x2, float y2){
    textSize(25);
    textAlign(LEFT);
    text("Astros Division Lead by Game Played", x, y - 10);
    textSize(15);
    textAlign(RIGHT, BOTTOM);
    text("Source: www.baseball-reference.com", x2 - 20, y2 + 40);
  }
}