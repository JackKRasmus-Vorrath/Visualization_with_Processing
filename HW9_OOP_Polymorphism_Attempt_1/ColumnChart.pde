//Variables specific to ColumnChart

int n = 5;           // Number of Teams
String[] names = {"Astros", "Dodgers", "Yankees", "Cubs", "Red Sox"};
PImage[] portraits = new PImage[n];
String[] imageNames = {"houston.png", "la.png", "ny.png", 
                       "chicago.png", "boston.png"};
Table composers;
PFont titleFont;  // Create from Arial Black 32 pt
color[] palette = {#778C84, #F2E6D0, #395059, #8C1B2F, #B5BFAA};
PFont yFont;      // Create from Arial Narrow 14 pt
float sliderX = 0;   // Initializes x coordinate for slider
int row = 0;         // Initializes row at 0
int rowCount = 27;  // rowCount = 418 (from looking at spreadsheet)
int gw;    // Grid width
int gh;    // Grid height
int minY = 0;    // Minimum value of Y for grid
int maxY = 50;  // Maximum value of Y for grid
int bw = 50;    // Bar width
int minX = 0;    // Minimum value of X for slider
int maxX = 27;  // Maximum value of X for slider (use rowCount)
int bm;
int lm;
int gm = 10;

class ColumnChart extends Chart{
  
  float x1 = X1_TR;
  float x2 = X2_TR;
  float y1 = Y1_TR;
  float y2 = Y2_TR;
    
  // constructors
  ColumnChart(){
    super();
  }
  
  //methods
  // This is inheritance implementation
    void drawRect(float x1, float y1, float x2, float y2){
   //   super.drawRect(x1,y1,x2,y2);
   rectMode(CORNERS);
   noStroke();
   fill(255);
   rect(x1, y1, x2, y2);
  }
  
  // mainTitle //////////////////////////////////////////////////////////////////
 void drawLegend(float x, float y, float x2, float y2){
      textSize(25);
      textAlign(LEFT);
      text("Google Trends on Baseball Teams: Number of Searches (in Thousands)", x, y - 10);
      //textSize(15);
      //textAlign(RIGHT, BOTTOM);
      //text("Source: www.baseball-reference.com", x2 - 20, y2 + 40);
    }

// gridLines //////////////////////////////////////////////////////////////////
void gridLines (float lm, float bm, float wide, float high, 
                int minY, int maxY, int divY) {
  // Arguments: left margin, bottom margin, width of grid
  // height of grid, minimum value for Y, max for Y,
  // number of divisions for Y axis
  
  pushMatrix();
  
  // Translate origin to bottom left of grid
  translate(lm, bm);
  
  stroke(palette[1]);
  strokeCap(SQUARE);
  
  // Y axis line (optional)
//  strokeWeight(1);
//  line(0, 0, 0, -high);
  
  // Reference lines
  strokeWeight(3);
  for (float i = 0; i <= divY; i++) {
    float y = (i/divY) * high;
    line(0, y, wide, y);
  }
    
  // y axis numbers
 // textFont(yFont);
  fill(palette[1]);
  textAlign(RIGHT, BOTTOM);
  for (float i = 0; i <= divY; i++) {
    float y = (i/divY) * high;
    // nfs(x, 0, 0) converts float to string with no decimals
    text(nfs(i*100/divY, 0, 0), -10, y);
  }

  popMatrix();
}

// slider ////////////////////////////////////////////////////////////////////
void slider(String title, float lm, float bm, float wide,
            int minX, int maxX, String minLabel, String maxLabel) {
  // Arguments: left margin, bottom margin, width of slider
  // minimum value for slider, max for slider
  float d = 20; // slider button diameter
  
  // Slider line
  stroke(palette[3]);
  strokeCap(SQUARE);
  strokeWeight(5);
  line(lm, height - bm, lm + wide, height - bm);
  
  // Slider button
  noStroke();
  fill(palette[1]);
  if ((dist(mouseX, mouseY, sliderX, height - bm) < d) && mousePressed)
    sliderX = mouseX;
  sliderX = constrain(sliderX, lm, lm + wide - 1);  // The "-1" avoids array error
  ellipse(sliderX, height - bm, d, d);
  fill(palette[3]);
  ellipse(sliderX, height - bm, d/2, d/2);
  
  // Slider title
  textAlign(CENTER, CENTER);
  fill(palette[3]);
  text(title, lm + wide/2, height - bm + 20);
  
  // Slider min/max labels
  text(minLabel, lm, height - bm + 20);
  text(maxLabel, lm + wide, height - bm + 20);
  
  // Use slider to set data value
  row = int(((sliderX - lm)/gw) * rowCount);
  
  // Slider current value
  text(composers.getString(row, 0), sliderX, height - bm - 25);
}

// bar ///////////////////////////////////////////////////////////////////////
void bar(float lm, int gw, float bm, int bw, int bar_i,
         int bar_n, String name, int barHeight) {
           
  fill(palette[3]);  
  float barH = barHeight * -(gh/28);  // Stretches bar height to match grid
  // Calculates x coordinate for each bar to space evenly
  float bar_X = lm + (bar_i + 1) * (gw / (bar_n + 1));
  float bar_bY = bm;         // Y for bottom of bar
  float bar_tY = bar_bY - barH;       // Y for top of bar
  float labelY = 365;                  // Y coordinate for bar labels
    
  // Draw bar
  rect(bar_X - bw/4, bar_tY, bar_X, bm);
  //rect(1080, bar_tY, 1070, barH);
  // Images above bars with labels
  //rect(x1, y1, x2, y2);
  image(portraits[bar_i], bar_X - bw/2, labelY - 80);
  textAlign(CENTER, CENTER);
  fill(palette[2]);
  text(name, bar_X, labelY);
}
}