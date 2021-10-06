float laserSpeed = 3;

class Laser extends Mover {
  

  Laser(float x1, float y1, float x2, float y2) {
    super(x1, y1);


    float hyp = dist(x1, y1, x2, y2);

    float dx = x2 - x1;
    float dy = y2 - y1;

    this.sx = laserSpeed * dx / hyp;
    this.sy = laserSpeed * dy / hyp;
  }

  void render() {
    this.move();

    fill(0, 255, 0);
    ellipse(this.x, this.y, 5, 5);
  }
}
