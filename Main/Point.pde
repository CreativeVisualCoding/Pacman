
class Point {
  float x2;
  float y2;

  Point (float x, float y) {
    x2=x;
    y2=y;
  }

  void display() {
    fill(255);
    noStroke();
    circle(x2, y2, 15);
  }
}
