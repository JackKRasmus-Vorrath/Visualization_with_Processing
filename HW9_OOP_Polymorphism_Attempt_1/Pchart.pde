//Variables specific to Pchart

float[] Attendance;
float[] AttendancePct;
float[] Angles;
float[] normVals;
float[] MappedVals;

float minMV, maxMV;

class Pchart extends Chart{
  
  //PVector loc;
  //color fillCol;
  //String message;
  String pie_message;
  
  float x1 = X1_TL;
  float x2 = X2_TL;
  float y1 = Y1_TL;
  float y2 = Y2_TL;
  
  // constructors
  Pchart(){
    super();
  }
 
  //overloaded constructor
  Pchart(PVector loc, color fillCol, String message, String pie_message){
    super(loc, fillCol, message);
    this.pie_message = pie_message;
    println("This class inherits from the Chart class");
  }
  
  
  //methods
  void pGraph(float diameter, float[] data, float[] attendance) {
  float lastAngle = 0;
  for (int i = 0; i < data.length; i++) {
    float norm_grey = (attendance[i] - min(attendance) / max(attendance) - min(attendance));
    normVals[i] = norm_grey;   
    //println((normVals[i]/max(normVals))*255);
    
    textSize(16);
    fill(0, 102, 153);
    text("Week " + (i+1) + ": " + round(Attendance[i]), 80, 120+(16*i)); 
    
  }
   //println(min(normVals));
   //println(max(normVals));
  for (int j = 0; j < data.length; j++){
    float orange = map(j, 0, 100, maxMV-MappedVals[j], maxMV);    
    fill(color(255, 140, orange));
    arc(((margin + width/2-margin) / 2), ((header + height/2+header/2-margin) / 2), diameter, diameter, lastAngle, lastAngle+radians(data[j]));
    lastAngle += radians(data[j]);
    }
  fill(255, 127, 80);
  text("Week 1", (((margin + width/2-margin) / 2) + (diameter/2)+10), ((header + height/2+header/2-margin) / 2));
  text("Week 8", (((margin + width/2-margin) / 2)) - 25, (((header + height/2+header/2-margin) / 2) + diameter/2) + 20);
  text("Week 14", (((margin + width/2-margin) / 2) - 3*diameter/4), ((header + height/2+header/2-margin) / 2));
  text("Week 20", (((margin + width/2-margin) / 2)) - 25, (((header + height/2+header/2-margin) / 2) - diameter/2) - 10);
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
  
    void drawLegend(float x, float y, float x2, float y2){
      textSize(25);
      textAlign(LEFT);
      text("Astros Weekly Attendance (Percentage of Total Attendance)", x, y - 10);
      //textSize(15);
      //textAlign(RIGHT, BOTTOM);
      //text("Source: www.baseball-reference.com", x2 - 20, y2 + 40);
    }
  
}