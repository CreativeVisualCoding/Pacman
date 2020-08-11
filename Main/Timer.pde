class Timer {
  int timeStart = 0;
  int timeStop = 0;
  boolean running = false;  
  int score;

  void startTimer() {
    timeStart = millis();
    running = true;
  }

  void display() {
    fill(#FFFFFF);
    textSize(20);
    text("Time : "+minute()+":"+ second(), 600, 100);
    text("Score : "+score, 600, 150);
  }


  void stopTimer() {
    timeStop = millis();
    running = false;
  }
  
  int getElapsedTime() {
    int elapsed;
    if (running) {
      elapsed = (millis() - timeStart);
    } else {
      elapsed = (timeStop - timeStart);
    }    
    return elapsed;
  }
  int second() {
    return (getElapsedTime() / 1000) % 60;
  }
  int minute() {
    return (getElapsedTime() / (1000*60)) % 60;
  }
  int hour() {
    return (getElapsedTime() / (1000*60*60)) % 24;
  }
}
