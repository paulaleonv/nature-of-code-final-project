//Based on Daniel Shiffman Nature of Code Exercise_8_06_Tree (Recursive Tree)

void newTree() {
  //background(255);
  fill(0);
  // Start the tree from the bottom of the screen
  translate(width*0.7, height*0.4);
  // Start the recursive branching!
  branch(72);
  //roots (55);
}

void branch(float h) {
  // thickness of the branch is mapped to its length
  float xoffTree;
  float n;
 
  float sw = map(h, 10, 120, 1, 15);
  //float n for noise
  xoffTree= 10;
  n= noise(xoffTree);
  strokeWeight(sw);
   //float theta = random(0,PI/6); // 
 
  stroke(91,50,33);
  line(n, n, 0, -h);
    translate(0, -h);
    h *= 0.75;
    if (h > 2) {
    pushMatrix();    
    rotate(theta);   
    branch(h);
    popMatrix();     
    pushMatrix();
    rotate(-theta);
    branch(h);
    popMatrix();
  }
}

//void roots(float z) {
   // thickness of the branch is mapped to its length
  //float sw = map(z, 5, 40, 1, 6);
  //strokeWeight(sw);
//   float theta = random(0.2,PI/3); // 
 
  //line(0, 0, 0, z);
  //translate(0, z);
 // stroke(64,39,27);
 // z *= 0.75;
  //if (z > 2) {
   // pushMatrix();    
    //rotate(theta);   
    //roots(z);
    //popMatrix();     
    //pushMatrix();
    //rotate(-theta);
    //roots(z);
    //popMatrix();
 // }
  
  
//}