//shared Chart variables

float[] Game;

float X1_TL, Y1_TL, X2_TL, Y2_TL;
float X1_TR, Y1_TR, X2_TR, Y2_TR;
float X1_BL, Y1_BL, X2_BL, Y2_BL;
float X1_BR, Y1_BR, X2_BR, Y2_BR;

abstract class Chart {
  
    PVector loc;
    color fillCol;
    String message;
    
    float x1;
    float y1;
    float x2;
    float y2;
  
    Chart(){
      
    }
    
  Chart(PVector loc, color fillCol, String message){
    this.loc = loc;
    this.fillCol = fillCol;
    this.message = message;
  }
  
  void Im_a_method(){
    println("Look at me, Im a method!");
  }
  
  abstract void drawRect(float x1, float y1, float x2, float y2);
  
  void lineGraph(float[] data, float yMin, float yMax, float x1, float y1, float x2, float y2, float r, float g, float b){
    
  };
    // This is empty method implentation -- NOT USED BY COLUMNCHART
  
  void drawXLabels(float min, float max, float spread, float x1, float x2, float y2){
  };
    // This is empty method implentation -- NOT USED BY COLUMNCHART 
  
  void drawYLabels(float min, float max, float x1, float y1, float y2){
    
  };
    // This is empty method implentation -- NOT USED BY COLUMNCHART
    
  void pGraph(float diameter, float[] data, float[] attendance){
    
  };
    // This is empty method implentation -- ONLY USED BY PCHART
    
  void gridLines(float lm, float bm, float wide, float high, 
                int minY, int maxY, int divY){
  };
    // This is empty method implentation -- ONLY USED BY COLUMNCHART 
    
  void slider(String title, float lm, float bm, float wide,
            int minX, int maxX, String minLabel, String maxLabel){
  };
    // This is empty method implentation -- ONLY USED BY COLUMNCHART
    
  void bar(float lm, int gw, float bm, int bw, int bar_i,
         int bar_n, String name, int barHeight){
  };
    // This is empty method implentation -- ONLY USED BY COLUMNCHART 
         
  abstract void drawLegend(float x, float y, float x2, float y2);
  
}