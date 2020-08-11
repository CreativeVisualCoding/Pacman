
class Ghost {
  PVector position;
  float radius;
  PShape ghost = loadShape("ghost.svg");
  float velocity = random(5,15);
   
  boolean positive = true; 

  Ghost() {
    position = new PVector(random(0, 700),random(0, 700));
    radius = 45;
  }


  
  void display(){  
    shapeMode(CENTER);
    shape(ghost,position.x,position.y,radius*2,radius*2);
   
  }

  void moveGhost(){
  if(positive){
    this.setX(velocity);
    if(this.getX() >= 750){positive = false;}
  } else{
    this.setX(-velocity);
    if(this.getX() <=0){ positive = true;}
  }
  }

  void setX(float x) {
    position.x += x;
  }


  void setY(float y) {
    position.y += y;
  }
  
  
    float getX() {
    return position.x;
  }

  float getY() {
    return position.y;
  }
}
