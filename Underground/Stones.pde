class Stones {
  
  float sX;
  float sY;
  float sColR;
  float sColG;
  float sColB;
  float sColA;
  
      Stones (float x, float y, float sCR, float sCG,float sCB,float sCA) {
         sX=x;
         sY=y;
         sColR=sCR;
         sColG=sCG;
         sColB=sCB;
         sColA=sCA; 
        
      }
      
      
     void display() {
       noStroke();
       fill (sColR,sColG,sColB,sColA);
       beginShape();
       vertex (sX,sY);
       vertex (sX+random(10,30),sY+random(15,28));
       vertex (sX+random(-20,60),sY+random(-15,-50));
       vertex (sX+random(6,30),sY+random(-22,-33));
       vertex (sX,sY);
       endShape();
       //println ("is the stone there");
     }

}