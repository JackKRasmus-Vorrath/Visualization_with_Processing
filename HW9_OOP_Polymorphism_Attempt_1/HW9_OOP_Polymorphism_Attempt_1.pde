//Engine e;

Chart[] ch = new Chart[4];

//PImage img;
int header = 100;
float margin = 50;

void setup(){
  size(1920, 1080);
  
  //img = loadImage("Astros_BG2.jpg");
  
  //shared Chart margin and header assignments
  
  X1_TL = margin; 
  Y1_TL = header; 
  X2_TL = width/2-margin; 
  Y2_TL = height/2+header/2-margin;
  X1_TR = width/2+margin; 
  Y1_TR = header; 
  X2_TR = width-margin; 
  Y2_TR = height/2+header/2-margin; 
  X1_BL = margin; 
  Y1_BL = height/2+header/2+margin; 
  X2_BL = width/2-margin; 
  Y2_BL = height-margin;
  X1_BR = width/2+margin; 
  Y1_BR = height/2+header/2+margin; 
  X2_BR = width-margin; 
  Y2_BR = height-margin;
  
  //data load for GBchart, Pchart, WPchart
  
  String[] lines = loadStrings("Astros2017dat.csv");
  GB = new float[lines.length];
  WP = new float[lines.length];
  Game = new float[lines.length];
  Attendance = new float[lines.length];
  AttendancePct = new float[lines.length];
  Angles = new float[lines.length];
  normVals = new float[lines.length];
  MappedVals = new float[lines.length];
  for (int i=0; i<lines.length; i++){
    String[] pieces = split(lines[i], ",");
    GB[i] = float(pieces[15]);
    WP[i] = float(pieces[14]);
    Game[i] = float(pieces[7]);
    Attendance[i] = float(pieces[22]);
    AttendancePct[i] = float(pieces[23]);
    Angles[i] = float(pieces[24]);
    MappedVals[i] = float(pieces[25]);
  }  
  
  minGB = min(GB);
  maxGB = max(GB);
  minGM = min(Game);
  maxGM = max(Game);
  minWP = min(WP);
  maxWP = max(WP);
  
  minMV = min(MappedVals);
  maxMV = max(MappedVals);  
  
  //data load for ColumnChart, Table
  
  titleFont = loadFont("Arial-Black-32.vlw");
  yFont = loadFont("ArialNarrow-14.vlw");
  composers = new Table("Astros2017dat.csv");  
  // Load images into array  
  for (int i = 0; i < n; i++) {
    portraits[i] = loadImage(imageNames[i]);
  }
  gw = (int)(X2_TR - X1_TR) - (2* gm);
  gh = (int)(Y1_TR - Y2_TR) + (2* gm);
  bm = (int)(Y1_TR - gh) + gm;
  lm = (int)X1_TR + gm; 
  
  //generate polymorphic array of Charts
  
  for(int i=0; i<4; i++){
    if(i%4==0){
      ch[i] = new GBchart();
    } else if (i%4==1){
      ch[i] = new Pchart();
    } else if (i%4==2){
      ch[i] = new WPchart();
    } else {
      ch[i] = new ColumnChart();
    }
  }
  
//  e = new Engine(ch);
  
}

void draw(){
  background(0,45,98);  
  // setting the dashboard title
  textSize(50);
  textAlign(CENTER);
  text("2017 Houston Astros Season Summary Dashboard", width/2, header/2);
  
  // access charts from Chart array to call draw methods
  
  //GBchart
  
  ch[0].drawRect(X1_BL, Y1_BL, X2_BL, Y2_BL);
  ch[0].drawLegend(X1_BL, Y1_BL, X2_BL, Y2_BL);
  ch[0].lineGraph(GB, minGB, maxGB, X1_BL, Y1_BL, X2_BL, Y2_BL, 235, 110, 31);
  ch[0].drawXLabels(minGM, maxGM, 10, X1_BL, X2_BL, Y2_BL);
  ch[0].drawYLabels(minGB, maxGB, X1_BL, Y1_BL, Y2_BL);
  
  //Pchart
  
  ch[1].drawRect(X1_TL, Y1_TL, X2_TL, Y2_TL);
  ch[1].drawLegend(X1_TL, Y1_TL, X2_TL, Y2_TL);
  ch[1].pGraph(300, Angles, Attendance);
   
  //WPchart
  
  ch[2].drawRect(X1_BR, Y1_BR, X2_BR, Y2_BR);
  ch[2].drawLegend(X1_BR, Y1_BR, X2_BR, Y2_BR);
  ch[2].lineGraph(WP, 0, 1, X1_BR, Y1_BR, X2_BR, Y2_BR, 0, 45, 98);
  ch[2].drawXLabels(minGM, maxGM, 10, X1_BR, X2_BR, Y2_BR);
  ch[2].drawYLabels(0, 1, X1_BR, Y1_BR, Y2_BR); 
  
  //ColumnChart
  
  ch[3].drawRect(X1_TR, Y1_TR, X2_TR, Y2_TR);
  ch[3].drawLegend(X1_TR, Y1_TR, X2_TR, Y2_TR);
  ch[3].gridLines(lm, bm, gw, gh, minY, maxY, 4);
  ch[3].slider("Week", lm + gm , bm - gm, gw, minX, maxX, "April 2017", "October 2017");
    for (int i = 0; i < names.length; i++) {
      ch[3].bar(lm, gw, bm, bw, i, names.length, names[i], composers.getInt(row, i + 1));
    }
}