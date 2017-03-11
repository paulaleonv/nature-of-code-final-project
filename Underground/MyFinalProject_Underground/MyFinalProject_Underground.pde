
//project roots
//by paula leonvendagar
//march 2017
//code assistance by aaron montoya-moraga, yining shi, craig pickard, kat sullivan
//some portions of the code based on work by ryan chon
//https://www.openprocessing.org/sketch/158950
//and Daniel Shiffman Nature of Code Exercise_8_06_Tree (Recursive Tree)
//coded in processing 3.3 on a macbook pro with os x 10.12.3
//files:
//MyFinalProject_Underground.pde is the main file
//Branche is the tree
//pathfinder are the roots
//Ladybud is one of the characters
//Scorpio is other character
//Leaves are some leaves I did to add to the tree( not working now)
//Root.pde has the Root class definition
//v0.0.1


//Declaring mountains
Mountain myMountain1;
Mountain myMountain2;
Mountain myMountain3;
Mountain myMountain4;
Mountain myMountain5;
//Array of leaves for the tree
Leaves [] myLeaves; 
//Arraylist of ladybugs and Scorpios
ArrayList <Ladybug> ladybugAL;
ArrayList <Scorpio> scorpioAL;
//Array list of Ladybug and Scorpios position
ArrayList <PVector> ScorpioPos;
ArrayList <PVector> LadybugPos;
// ints for how many Ladybugs and scorpios
int ladybugsQuantity = 1;
int scorpiosQuantity = 1;
//Float to create perlin noise to move the sun
float t = 0;
// Global variable for the tree branches
float theta = random(0,PI/6);  
float x,y;
// variables for the roots
pathfinder[] paths;
ArrayList<Leaf> allPos = new ArrayList<Leaf>();



void setup() {
  
  size(1080, 720);
  
  myMountain1 = new Mountain (-500, 500, 123, 101, 81, 110);
  myMountain2 = new Mountain (-500, 100, 66, 46, 7, 100);
  myMountain3 = new Mountain (-200, 200, 121, 66, 42, 170);
  myMountain4 = new Mountain (0, 20, 82, 37, 18, 100);
  //myMountain5 = new Mountain (0, 50, 100, 125, 102, 210);
  newTree();

//setting up arrays of Ladybugs and scorpio
  ladybugAL= new ArrayList<Ladybug>(); 
  scorpioAL= new ArrayList<Scorpio>();

  for (int i= 0; i<ladybugsQuantity; i++) {    
    //PVector for random scorpios positions
    PVector LadybugPos= new PVector (random(30,300),height);  
    ladybugAL.add(new Ladybug(45,LadybugPos));
    //ladybugAL.add(new Ladybug(35,LadybugPos));   
  }

  for (int j= 0; j<scorpiosQuantity; j++) {
    //PVector for random scorpios positions
    PVector ScorpioPos= new PVector (random(30,500), 690);
   // scorpioAL.add(new Scorpio(70,ScorpioPos));
    scorpioAL.add(new Scorpio(50,ScorpioPos));
  }

  // array of leaves for the tree ( I am not using them yet)
  myLeaves= new Leaves[150];
  for (int i = 0; i  < myLeaves.length; i++) {
    myLeaves[i] = new Leaves (random(650, 880), random (40, 170), random(20, 50), random (30, 120), random(150, 255), random(40, 70), random(100, 200));
  }
  
  //setting the roots
  ellipseMode(CENTER);
  fill (65, 45, 15);
  noStroke();
  smooth();
  paths = new pathfinder[1];
  paths[0] = new pathfinder();
  
} //end of setup

void draw() {
  
  background (201, 247, 248); 

  // displaying the roots
  for (int i=0;i<paths.length;i++) {
    PVector loc = paths[i].location;
    float diam = paths[i].diameter;
    ellipse(loc.x, loc.y, diam, diam);
    paths[i].update();
  }
  // loop through allPos, to draw all the dots along the way
  for (int j = 0; j < allPos.size(); j++) {
    float x = allPos.get(j).x;
    float y = allPos.get(j).y;
    float d = allPos.get(j).d;
    ellipse(x, y, d, d);
  }
  //Sun with perlin noise
  //Floats to create perlin noise to move the sun 
  float n = noise(t);
  println(n);
  // Now, we move forward in time!
  t += 0.5;
  stroke(231*t, 191, 33);
  fill(231*t, 191, 33);
  ellipse (t, t/2, 65, 65);

  //displaying the mountains
  myMountain1.display(); 
  myMountain2.display();  
  myMountain3.display();  
  myMountain4.display();  

  //displaying the leaves
  //for (int i = 0; i  < myLeaves.length; i++) {
    //myLeaves[i].display();
 // }
  //displaying the tree
  pushMatrix();
  newTree();
  popMatrix();

  //loop for array list of Ladybugs
  for (Ladybug l : ladybugAL) {
    l.display();
    l.update();
    l.checkEdges();
    
  }
  //loop for array list of scorpio
  for (Scorpio s : scorpioAL) {
    s.display();
    s.update();
    s.checkEdges();
    
  }
  println(frameCount);
}
//end of draw

void mousePressed() {
  background(0);
  paths = new pathfinder[1];
  paths[0] = new pathfinder();
}