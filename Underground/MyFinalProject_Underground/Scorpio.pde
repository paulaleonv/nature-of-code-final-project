//Scorpio character
class Scorpio {
   
     PVector ePos;
     PVector eVel;
     PVector eRfeetPos;
     PVector eLfeetPos;
     PVector eColaPos;
     float eWidth;
     float eMass;
   
     //constructor Scorpio
     Scorpio (int _eMass, PVector _ePos) {
       ePos= _ePos;
       eVel= new PVector(0.5,-1);
       eRfeetPos= new PVector(ePos.x, ePos.y);
       eLfeetPos= new PVector(ePos.x, ePos.y);
       //eColaPos= new PVector (ePos.x+eWidth/4,ePos.y+eWidth/1.1);
       eMass= _eMass;
       eWidth= eMass/2;
       
     }
     
     void update() {
      ePos.add(eVel);  
     }
   
     void display () {    
     //Scorpion Body
     fill (10,20,20);
     beginShape();
     vertex (ePos.x,ePos.y);
     bezierVertex (ePos.x,ePos.y,ePos.x+eWidth/5,ePos.y-eWidth/5,ePos.x+eWidth/3,ePos.y);
     bezierVertex (ePos.x+eWidth/3,ePos.y,ePos.x+eWidth,ePos.y+eWidth/2.5,ePos.x+eWidth/3,ePos.y+eWidth*1.5);
     bezierVertex (ePos.x+eWidth/3,ePos.y+eWidth*1.5,ePos.x+eWidth/4,ePos.y+eWidth/1.1,ePos.x+eWidth/5, ePos.y+eWidth*1.5);
     bezierVertex (ePos.x+eWidth/5,ePos.y+eWidth*1.5,ePos.x-eWidth/1.5,ePos.y+eWidth/1.5,ePos.x,ePos.y);
     vertex (ePos.x,ePos.y);
     endShape();
     //Scorpio Cola
      fill(0,20,60);
      beginShape();
      vertex (ePos.x+eWidth/2.3,ePos.y+eWidth*1.25);
      bezierVertex (ePos.x+eWidth/2.3,ePos.y+eWidth*1.25, ePos.x+eWidth/3,ePos.y+eWidth*1.5, ePos.x+eWidth/4,ePos.y+eWidth*3);
      //something wear here
      bezierVertex (ePos.x+eWidth/4,ePos.y+eWidth*3, ePos.x+eWidth/5,ePos.y+eWidth*1.5, ePos.x,ePos.y+eWidth*1.25);
      //vertex (ePos.x-eMass/800,ePos.y+eWidth*1.5); 
      //vertex (ePos.x+eWidth/4,ePos.y+eWidth*1.3);
      endShape();
      //scorpio eyes
      fill (0,0,255);
      ellipse (ePos.x+eMass/25, ePos.y+eMass/120, eMass/18,eMass/20);
      ellipse (ePos.x+eMass/8, ePos.y+eMass/120, eMass/18,eMass/20);
      //scorpio right feet 
       fill(0,40,50);
       beginShape();
       vertex (ePos.x+eWidth/2.3,ePos.y+eWidth/9);
       vertex (ePos.x+eWidth/1.05,ePos.y- eWidth/3);
       vertex (ePos.x+eWidth/1.2,ePos.y- eWidth/1.3);
       vertex (ePos.x+eWidth/1.05,ePos.y- eWidth/1.8);
       vertex (ePos.x+eWidth*1.1,ePos.y- eWidth/1.3);
       vertex (ePos.x+eWidth*1.2,ePos.y- eWidth/4);
       vertex (ePos.x+eWidth/2,ePos.y+eWidth/6);
       vertex (ePos.x+eWidth/2.3,ePos.y+eWidth/9);
       endShape(); 
       //scorpio left feet 
       fill(0,40,50);
       beginShape();
       vertex (ePos.x-eWidth/10,ePos.y+eWidth/9);
       vertex (ePos.x-eWidth/2,ePos.y- eWidth/3);
       vertex (ePos.x-eWidth/3,ePos.y- eWidth/1.3);
       vertex (ePos.x-eWidth/2,ePos.y- eWidth/1.8);
       vertex (ePos.x-eWidth/1.5,ePos.y- eWidth/1.3);
       vertex (ePos.x-eWidth/1.5,ePos.y- eWidth/4);
       vertex (ePos.x-eWidth/6,ePos.y+eWidth/6);
       vertex (ePos.x-eWidth/10,ePos.y+eWidth/9);
       endShape(); 
      //scorpio back feets right size
      fill (10,20,20);
      beginShape();
      vertex (ePos.x+eWidth/2,ePos.y+eWidth/4);
      vertex (ePos.x+eWidth,ePos.y+eWidth/9);
      vertex (ePos.x+eWidth*1.5,ePos.y+eWidth/3.5);
      vertex (ePos.x+eWidth,ePos.y+eWidth/5);
      vertex (ePos.x+eWidth/2,ePos.y+eWidth/3);
      vertex (ePos.x+eWidth/2,ePos.y+eWidth/4);
      endShape(); 
       
      beginShape();
      vertex (ePos.x+eWidth/2,ePos.y+eWidth/2);
      vertex (ePos.x+eWidth,ePos.y+eWidth/2.7);
      vertex (ePos.x+eWidth*1.5,ePos.y+eWidth/1.5);
      vertex (ePos.x+eWidth,ePos.y+eWidth/2);
      vertex (ePos.x+eWidth/2,ePos.y+eWidth/1.4);
      vertex (ePos.x+eWidth/2,ePos.y+eWidth/2);
      endShape(); 
       
      beginShape();
      vertex (ePos.x+eWidth/2,ePos.y+eWidth/1.2);
      vertex (ePos.x+eWidth*1.1,ePos.y+eWidth/1.5);
      vertex (ePos.x+eWidth*1.5,ePos.y+eWidth);
      vertex (ePos.x+eWidth*1.1,ePos.y+eWidth/1.3);
      vertex (ePos.x+eWidth/2,ePos.y+eWidth/1.1);
      vertex (ePos.x+eWidth/2,ePos.y+eWidth/1.2);
      endShape(); 
       
      beginShape();
      vertex (ePos.x+eWidth/2,ePos.y+eWidth);
      vertex (ePos.x+eWidth*1.001,ePos.y+eWidth);
      vertex (ePos.x+eWidth*1.2,ePos.y+eWidth*1.3);
      vertex (ePos.x+eWidth*1.001,ePos.y+eWidth*1.1);
      vertex (ePos.x+eWidth/2,ePos.y+eWidth*1.19);
      vertex (ePos.x+eWidth/2,ePos.y+eWidth);
      endShape(); 
       
        //scorpio back feets left size
      beginShape();
      vertex (ePos.x,ePos.y+eWidth/4);
      vertex (ePos.x-eWidth/2,ePos.y+eWidth/9);
      vertex (ePos.x-eWidth*1.1,ePos.y+eWidth/3.5);
      vertex (ePos.x-eWidth/2,ePos.y+eWidth/5);
      vertex (ePos.x,ePos.y+eWidth/3);
      vertex (ePos.x,ePos.y+eWidth/4);
      endShape(); 
  
      beginShape();
      vertex (ePos.x,ePos.y+eWidth/2);
      vertex (ePos.x-eWidth/2,ePos.y+eWidth/2.7);
      vertex (ePos.x-eWidth*1.2,ePos.y+eWidth/1.6);
      vertex (ePos.x-eWidth/1.8,ePos.y+eWidth/2);
      vertex (ePos.x,ePos.y+eWidth/1.4);
      vertex (ePos.x,ePos.y+eWidth/2);
      endShape(); 

      beginShape();
      vertex (ePos.x,ePos.y+eWidth/1.2);
      vertex (ePos.x-eWidth/1.8,ePos.y+eWidth/1.5);
      vertex (ePos.x-eWidth*1.05,ePos.y+eWidth);
      vertex (ePos.x-eWidth/1.8,ePos.y+eWidth/1.3);
      vertex (ePos.x,ePos.y+eWidth/1.1);
      vertex (ePos.x,ePos.y+eWidth/1.2);
      endShape(); 
       
      beginShape();
      vertex (ePos.x,ePos.y+eWidth);
      vertex (ePos.x-eWidth/2.5,ePos.y+eWidth/1.01);
      vertex (ePos.x-eWidth/1.3,ePos.y+eWidth*1.3);
      vertex (ePos.x-eWidth/2,ePos.y+eWidth*1.1);
      vertex (ePos.x,ePos.y+eWidth*1.19);
      vertex (ePos.x,ePos.y+eWidth);
      endShape(); 
     
     }  
     //end of display
     
      void checkEdges(){
      if (ePos.x>width){
        ePos.x=0;
      } else if (ePos.x <0) {
       ePos.x= width;
      }
      
      if (ePos.y>height) {
       ePos.y=0;
      } else if (ePos.y<0) {
       ePos.y =height; 
      }
    
    
  }
  //end of checkedges
     
     
     
     
     
     
     
     
  }
  
  