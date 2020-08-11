class Game{

  Pacman pacman;
  Ghost ghost;
  Ghost ghost_2;
  Ghost ghost_3;
  Timer timer;
  int score = 0;
  ArrayList<Point>points;
  boolean gameIsOver = false;
  
  Game(){
  pacman = new Pacman(100.0, 100.0, 0);
  ghost = new Ghost();
  ghost_2 = new Ghost();
  ghost_3 = new Ghost();
  timer = new Timer();
  points = new ArrayList<Point>();
  initList();
  timer.startTimer();
  }
  
  
  void startGame(){
 if(!gameIsOver){
    ghost.display();
    timer.display();
    gameIsOver=pacman. checkCollision(ghost);
    ghost.moveGhost();
    pacman.display();
    createNewPoints();
    
    if (timer.second()>10) {
      ghost_2.display();
      ghost_2.moveGhost();
      gameIsOver = pacman.checkCollision(ghost_2);
    }
    if(timer.second()>20){
     ghost_3.display();
      ghost_3.moveGhost();
      gameIsOver = pacman.checkCollision(ghost_3);
    }
  } else {
    gameOver();
  }
  
  
  }

void initList(){
  for (float i = 0; i<=10; i++) {
    points.add(new Point(random(0,8)*100, i*100));
  }
}

void gameOver() {
  fill(255);
  textSize(80);
  text("GAME OVER", 200, 350);
  textSize(40);
  text(score+" Points", 250, 450);
}

void createNewPoints(){
for ( int i= 0; i<points.size(); i++) {
  points.get(i).display();
    if (points.get(i).x2 >= pacman.getX()-50 && points.get(i).x2 <= pacman.getX()+50 && points.get(i).y2 <=pacman.getY()+50 && points.get(i).y2 >= pacman.getY()-50)
    { points.remove(i);
      score+=1;
      points.add(new Point(random(0, 750), random(0, 750)));
    }
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      pacman.setY(-15);
      pacman.setAngle(+5);
    }
    if (keyCode == DOWN) {
      pacman.setY(15);
      pacman.setAngle(-4.5);
    }
    if (keyCode == LEFT) {
      pacman.setX(-15);
      pacman.setAngle(-15.5);
    }
    if (keyCode ==RIGHT) {
      pacman.setX(15);
      pacman.setAngle(0);
    }
  }
}

}
