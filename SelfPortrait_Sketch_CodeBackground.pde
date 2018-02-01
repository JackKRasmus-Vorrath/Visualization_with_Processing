PImage bg;

void setup(){
  size(550,550);
  bg = loadImage("selfportrait_resized_bg.jpg");
  
}

void draw(){
  background(bg);
  //background(184,163,144); //(179,161,134)
  noFill();
  for(int i = 0; i<60; i++){
    
    //left cheek
    strokeWeight(0.85);
    stroke(0);
    arc(random(120 + i/5, 140), random(100+i/5,200), 145, 160, -6*PI/5, -3*PI/4);
    arc(random(120 + i/5, 145), random(100+i/5,200), 145, 160, 3*PI/5, 4*PI/5);
    arc(random(145 + i/5, 165), random(200+i/5,300), 145, 160, 3*PI/5, 4*PI/5);
    arc(random(160 + i/5, 180), random(270+i/5,340), 145, 160, PI/2, 4*PI/5);
    
    //right cheek  
    arc(random(320 + i/5, 230), random(100+i/5,200), 145, 160, -PI/4, PI/4);
    arc(random(320 + i/5, 220), random(200+i/5,270), 145, 160, 1*PI/5, 2*PI/5);
    arc(random(295 + i/5, 230), random(270+i/5,350), 145, 160, 1*PI/5, 2*PI/5);
      
    //chin
    arc(random(190 + i, 280), random(387 + i/5, 400), 175, 80, PI/5, 4*PI/5);
    arc(random(210 + i, 275), random(396 + i/5, 410), 175, 80, 3*PI/14, 15*PI/20);
        
    //forehead
    strokeWeight(0.8);
    stroke(44,34,36);
    arc(random(200 + 5*i/4, 340), random(10 + i/5, 50), 260, 100, -4*PI/5, -PI/5);
    arc(random(330 + i, 390), random(15 + i/5, 140), 120, 200, -3*PI/5, PI/6);
    arc(random(300 + i, 400), random(15 + i/5, 160), 160, 260, -3*PI/5, PI/6);
    
    //hair
    strokeWeight(1.67);
    stroke(91,68,58);
    
        //right side
    arc(random(355 + i, 365), random(50 + i/5, 220), 120, 380, -3*PI/5, 2*PI/5);
    arc(random(370 + i, 385), random(80 + i/5, 280), 120, 460, -3*PI/5, PI/2);
    arc(random(375 + i, 390), random(120 + i/5, 280), 140, 500, -3*PI/5, 8*PI/20);
    arc(random(380 + i, 395), random(220 + i/5, 380), 160, 440, -3*PI/5, PI/2);
    arc(random(440 + i, 455), random(250 + i/5, 400), 140, 460, -16*PI/10, -5*PI/8);
    arc(random(280 + i, 345), random(80 + i/5, 120), 290, 520, -6*PI/10, PI/20);
    arc(random(205 + i, 305), random(0 + i/5, 50), 360, 90, -7*PI/10, PI/20);
    arc(random(180 + i/5, 240), random(185 + i/5, 225), 420, 550, -3*PI/10, PI/5);
    
        //left side
    arc(random(160 - i, 100), random(240 + i/10, 270), 180, 500, PI/2, 3*PI/2);
    arc(random(180 - i, 120), random(140 + i/10, 170), 220, 420, 12*PI/20, 14*PI/10);
       
    arc(random(0 + i/60, 25), random(370 + i/5, 410), 150, 375, -7*PI/20, 6*PI/20);
    arc(random(340 + i/60, 405), random(270 + i/5, 310), 150, 545, -7*PI/20, 6*PI/20);
    arc(random(0 + i/60, 30), random(300 + i/5, 330), 130, 395, -7*PI/20, 7*PI/20);
    
    //left brow
    stroke(44,34,36);
    arc(random(150 + i/50, 165), random(110 + i/5, 130), 130, 20, -PI, PI/7);
    
    //right brow
    stroke(44,34,36);
    arc(random(320 + i/50, 335), random(110 + i/5, 130), 130, 20, -8*PI/7, 0);
    
    //nose
    strokeWeight(0.67);
    stroke(0);
    arc(random(235 + i/60, 240), random(180 + i/60, 250), 10, 60, PI/2, 3*PI/2);
    arc(random(235 + i/60, 240), random(295 + i/60, 297), 45, 30, 3*PI/2, 15*PI/7);
    
    //mouth
    arc(random(241 + i/60, 243), random(320 + i/60, 323), 30, 10, 0, PI);
    arc(random(200 + i/60, 203), random(328 + i/60, 332), 60, 20, PI, 13*PI/7);
    arc(random(277 + i/60, 280), random(325 + i/60, 329), 50, 15, PI, 2*PI);
    arc(random(240 + i/60, 245), random(345 + i/60, 349), 100, 15, 0, PI);    
  }
  
  //left eye
  for (int i = 0; i<30; i++){
    strokeWeight(0.4);
    stroke(0);
    
    //upper lid
    arc(random(150 + i/50, 155), random(135 + i/5, 145), 130, 45, -11*PI/20, PI/20);
    arc(random(50 + i/50, 53), random(138 + i/5, 141), 315, 55, -7*PI/20, 1*PI/20);
    //bottom lid
    arc(random(148 + i/50, 150), random(116 + i/5, 118), 130, 85, 9*PI/20, 16*PI/20);
    arc(random(139 + i/50, 141), random(149 + i/5, 150), 135, 25, -1*PI/20, 14*PI/20);
    
    //iris
    stroke(44,34,36);
    arc(random(154 + i/60, 158), random(133 + i/5, 138), 40, 30, -23*PI/20, -6*PI/20);
    arc(random(164 + i/50, 168), random(126 + i/10, 128), 65, 65, 9*PI/20, 17*PI/20);
    arc(random(123 + i/60, 125), random(144 + i/5, 148), 135, 65, -6*PI/20, 3*PI/20);
    
    //pupil
    arc(random(163 + i/50, 167), random(140 + i/10, 142), 10, 15, 7*PI/20, 23*PI/20);
    
  }   
    
  //right eye
  for (int i = 0; i<30; i++){
    strokeWeight(0.4);
    stroke(0);

    //upper lid
    arc(random(320 + i/50, 325), random(135 + i/5, 145), 130, 45, -21*PI/20, -9*PI/20);
    arc(random(420 + i/50, 423), random(138 + i/5, 141), 315, 55, -21*PI/20, -13*PI/20);
    //bottom lid
    arc(random(320 + i/50, 322), random(116 + i/5, 118), 130, 85, 4*PI/20, 11*PI/20);
    arc(random(329 + i/50, 331), random(149 + i/5, 150), 135, 25, 6*PI/20, 21*PI/20);
    
    //iris
    stroke(44,34,36);
    arc(random(316 + i/60, 320), random(133 + i/5, 138), 40, 30, -14*PI/20, 3*PI/20);
    arc(random(306 + i/50, 310), random(126 + i/10, 128), 65, 65, 3*PI/20, 11*PI/20);
    arc(random(350 + i/60, 352), random(144 + i/5, 148), 135, 65, 17*PI/20, 26*PI/20);
    
    //pupil
    arc(random(307 + i/50, 311), random(140 + i/10, 142), 10, 15, -3*PI/20, 13*PI/20);
    
  }  
  //save("self_portrait_V1.png");
}