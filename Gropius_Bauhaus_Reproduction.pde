void setup() {
  size(380, 340);  // size always goes first!
  surface.setResizable(true);
  
  //canvas background color
  background(51);
  
  //overlayed frame background color
  stroke(255, 255, 255, 0);
  rect(0, 0, 380, 40);
  rect(0, 40, 16, 300);
  rect(345, 40, 35, 300);
  rect(16, 300, 329, 40);
  
  //upper blue background
  stroke(#7EA7C3, 0); // set stroke color, totally transparent
  fill(126, 167, 195);
  rect(16, 40, 329, 39);
  strokeWeight(0);
  triangle(16, 40, 16, 142, 116, 40); //overlay triangular shapes
  triangle(130, 120, 130, 40, 223, 40);
  triangle(230, 111, 230, 40, 333, 40);
  quad(345, 79, 345, 90, 330, 102, 330, 79); //overlay quadrilateral
  
  //filled arcs
  strokeWeight(1);
  stroke(0, 0, 0);
  fill(#CAD8E1);
  arc(230, 150, 176, 176, PI, (PI+HALF_PI));
  arc(130, 150, 176, 176, PI, (PI+HALF_PI));
  arc(330, 150, 176, 176, PI, (PI+HALF_PI));
  
  //connecting to arc
  line(330, 102, 345, 90); 
  line(277, 79, 230, 111);
  line(172, 83, 130, 120);
  line(57, 99, 16, 142);
  
  //frame
  strokeWeight(1.5);
  line(16, 142, 16, 300);
  line(16, 300, 345, 300);
  line(345, 40, 345, 300);
  line(345, 40, 16, 40);
  strokeWeight(1);
  line(16, 40, 16, 142);
  
  //upper rectangles
  strokeWeight(1.5);
  rect(42, 150, 87, 60);
  rect(142, 150, 87, 60);
  rect(242, 150, 87, 60);
  
  //lower rectangles
  rect(42, 210, 87, 90);
  rect(142, 210, 87, 90);
  rect(242, 210, 87, 90);
  
  //blue quadrilaterals
  strokeWeight(1);
  fill(126, 167, 195);
  quad(142, 150, 142, 210, 139, 215, 139, 155);
  quad(136, 158, 136, 218, 139, 213, 139, 153);
  quad(133, 161, 133, 221, 136, 216, 136, 156);
  
  quad(142, 210, 142, 300, 139, 300, 139, 215);
  quad(136, 218, 136, 300, 139, 300, 139, 213);
  quad(133, 221, 133, 300, 136, 300, 136, 216);
  
  
  quad(242, 150, 242, 210, 239, 215, 239, 155);
  quad(236, 158, 236, 218, 239, 213, 239, 153);
  quad(233, 161, 233, 221, 236, 216, 236, 156);
  
  quad(242, 210, 242, 300, 239, 300, 239, 215);
  quad(236, 218, 236, 300, 239, 300, 239, 213);
  quad(233, 221, 233, 300, 236, 300, 236, 216);
  
  
  quad(342, 150, 342, 210, 339, 215, 339, 155);
  quad(336, 158, 336, 218, 339, 213, 339, 153);
  
  quad(342, 210, 342, 300, 339, 300, 339, 215);
  quad(336, 218, 336, 300, 339, 300, 339, 213);
  
  //save("bauhaus_V1.png");
  
}