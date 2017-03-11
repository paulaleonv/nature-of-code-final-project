class Mountain {
  float mPosX;
  float mPosY;
  float mColR;
  float mColG;
  float mColB;
  float mColA;
  float startX;


  Mountain (float mX, float mY, float _mColR, float _mColG, float _mColB, float _mColA) {
    mPosX= mX;
    mPosY= mY;
    mColR= _mColR;   
    mColG= _mColG;  
    mColB= _mColB; 
    mColA= _mColA;  
    startX= random(0, 22);

    println(mColR);
    println(mColG);
    println(mColB);
    println(mColA);
  }

  void display () {
    strokeWeight(1);
    //stroke (112,84,61);
    float xOff1 = startX;
    fill(mColR, mColG, mColB, mColA);
    beginShape();
    for (float mPosX=0; mPosX<width; mPosX++) {
      float mPosY= noise(xOff1)*500;
      //why is vertex not working here?

      //println ("is this vertex there?");
      stroke (mColR, mColG, mColB, mColA);
      vertex (mPosX, mPosY);
      // point (mPosX,mPosY);
      stroke (mColR, mColG, mColB, mColA);
      //noFill();
      //vertex (mPosX, mPosY + 5);
      // point (mPosX,mPosY+10);
      xOff1+= 0.001;
      //line (mPosX-200,mPosY,random(mPosY,width+300),random(mPosY,height+200));
      //line (mPosX, mPosY, mPosX, height);


      //noLoop();
    }
    vertex(width,height);
    vertex(0,height);
    endShape();
    
  }
}