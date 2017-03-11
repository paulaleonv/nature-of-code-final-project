//Ladybug character
class Ladybug {
   PVector position;
   PVector velocity;
   PVector acceleration; 
   float mass;
   float radio;
   float G;
  
    Ladybug (int LBmass, PVector pos){
    
       position= pos;
       velocity= new PVector(0.5,-1);
       mass=LBmass;
       radio= mass/2;
       G=0.4;    
    } //end of constructor;
    
    // Question: I Tried to create here an attractor to create attraction between ladybug and the scopio. 
    //I wanted ladybug to be the attractor. But I could not find out how to call the Scorpio arguments here
  
    //PVector attract(Scorpio sAttract) {
    // PVector force= PVector.sub(position, sAttract.position);
    //float distance= force.mag();
    // distance= constrain(distance, 5.0, 25.0);
      
    // force.normalize();
    //float strength= G*mass * s.mass)/ (distance*distance);
    //force.mult(strength);
    //return force;
      
    //}//end of attract Pvector
    
  //x=250;
  //y=250;
  
  //creating a simple movement for ladybug
  void update() {
  position.add(velocity);  
  }
  //displaying function for Ladybug
    void display () {    
      //the body of ladubug
      fill (255,0,0);
      float CirclesSize= radio/6;
      beginShape();
      vertex (position.x,position.y);
      bezierVertex(position.x,position.y,position.x+radio*1.6,position.y+radio,position.x, position.y+radio*1.8);
      vertex(position.x, position.y+radio*1.5);
      vertex (position.x,position.y);
      bezierVertex(position.x,position.y,position.x-radio*1.6,position.y+radio,position.x, position.y+radio*1.8);
      endShape();
       fill (0);
      //beginShape();
      //the head of ladybug
      ellipse(position.x,position.y,radio/3,radio/3);
      //the circles of LadyBug
      fill (0);
      ellipse (position.x-radio/4.5,position.y+radio/2.5,radio/6, radio/6); 
      ellipse (position.x-radio/2.5,position.y+radio,radio/4, radio/4); 
      ellipse (position.x+radio/6,position.y+radio*1.4,radio/8, radio/8); 
      ellipse (position.x-radio/6,position.y+radio*1.45,radio/4.5, radio/4.5); 
      ellipse (position.x+radio/3,position.y+radio,radio/5, radio/5); 
      ellipse (position.x+radio/3.4,position.y+radio/1.8,radio/3, radio/3); 
      //antenas
      line (position.x, position.y, position.x-radio/3.5,position.y-radio/3.5);
      line (position.x, position.y, position.x+radio/3.5,position.y-radio/3.5);
    }
    //simple function to check edges
    void checkEdges(){
      if (position.x>width){
        position.x=0;
      } else if (position.x <0) {
       position.x= width;
      }
      
      if (position.y>height) {
       position.y=0;
      } else if (position.y<0) {
       position.y =height; 
     
      }   
  }
  //end of checkedges
  
}
//end of ladybug class
  
  