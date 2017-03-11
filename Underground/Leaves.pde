class Leaves {
  float lPosX;
  float lPosY;
  float lSize;
  float lColR;
  float lColG;
  float lColB;
  float lColA;

  
  
   Leaves (float lX,float lY, float lS, float lCR, float lCG, float lCB, float lCA) {
    lPosX=lX;
    lPosY=lY;
    lSize=lS;
    lColR=lCR;
    lColG=lCG;
    lColB=lCB;
    lColA=lCA;
   
       
   }
  
  
  void display () {
    
    strokeWeight(1);
      stroke(lColR,lColG,lColB,lColA);
      fill(lColR,lColG,lColB,lColA);
      beginShape();
      vertex (lPosX,lPosY);
      bezierVertex(lPosX,lPosY,lPosX+6,lPosY+6,lPosX,lPosY+12);
      vertex(lPosX,lPosY+12);
      vertex(lPosX,lPosY);
      bezierVertex(lPosX,lPosY,lPosX-6,lPosY+6,lPosX,lPosY+12);
      endShape();
      
    
    
    
    
  }
  
  
  
  
  
}