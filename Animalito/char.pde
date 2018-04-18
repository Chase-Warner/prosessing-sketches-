class You {
  float ang=45; 
  character YOU;
  You () {
    YOU = new character(width/2,height/2,10);
  }
  void run(map MAP) {//Avalible functions, part allowed to change
   this.calc();
    ArrayList<float[]> info = MAP.infoSight(YOU).get(0);
     

    for (int i = 0;(info.size()) > i; i++) { //repeat for each item
   ////main loop
    
      float nx= info.get(0)[0];
      float ny = info.get(0)[1];
      ang = atan2(nx - YOU.x, ny - YOU.y);
        line(YOU.x,YOU.y,YOU.x+sin(ang)*60,YOU.y+cos(ang)*60);    
    
      if(dist(YOU.x,YOU.y,width/2,height/2) > 100){
        nx= width/2;
        ny= height/2;
           ang = atan2(nx - YOU.x, ny - YOU.y);
      }
    

    
    }
   
    

  //  ang = atan2(goal[0]-YOU.x,goal[1]-YOU.y); //points towards function
    if (YOU.hit(MAP,YOU.x+sin(ang),YOU.y+cos(ang))) {
      println("hit");
   for(int i=0; 4 > i; i++){
     float dir= radians(90*i);
     float nx= X+sin(dir);
     float ny= Y+cos(dir);
     if(YOU.hit(MAP, nx,ny)) {
     ang = dir+PI/2;
       wait = 15;
if(YOU.hit(MAP,YOU.x+sin(ang),YOU.y+cos(ang)) == true){
  ang= ang+radians(180);
}
     }
       }
       println(degrees(ang));
    }
    
       
    if (YOU.evolveReady()) { //if ready to evolve
       MAP.evolve(YOU,0); //then evolve with choice of path 0
    }
   
    ////
    this.calc2(MAP,ang,.5 ); //mandatory, makes you moves, takes angle of movement, and speed as input
    
  }

  
  void calc() {
    YOU.view();
    YOU.run();
  }
  void calc2(map map,float ang,float speed) {
    YOU.move(map,ang,min(YOU.maxSpeed,speed) ); //max speed of maxSpeed
     map.eatan(YOU);
  }
 
}