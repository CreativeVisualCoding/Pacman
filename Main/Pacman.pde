class Pacman {
  PVector position;
  float angle, radius;


  Pacman(float x, float y, float angle2) {
    position = new PVector(x,y);
    radius = 50;
   angle = angle2;
  }

  void display() {
    fill(#ee39bc);
    arc(position.x, position.y,radius*2,2*radius, QUARTER_PI-0.5+this.angle, TWO_PI-0.5+this.angle);
    fill(0);
    circle(position.x-15, position.y-20, 15);
  }

  boolean checkCollision(Ghost ghost){
    
    //Distance between Pacman & Ghost
    PVector distanceVect = PVector.sub(ghost.position, this.position);
    
    float distanceVectMag = distanceVect.mag();
     
    // Minimum Distance before ghost & pacman touching
    float minDistance = radius + ghost.radius;
    
    if(distanceVectMag < minDistance){
      return true;
    } 
    return false;
   
  
  }

  void setX(float x) {
    position.x += x;
  }


  void setY(float y) {
    position.y += y;
  }

  void setAngle(float angle) {
    if (angle == 0) {
      this.angle = 0;
    } else {
      this.angle = angle;
    }
  }

  float getX() {
    return this.position.x;
  }

  float getY() {
    return this.position.y;
  }
}
