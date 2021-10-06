
  class Asteroid extends Mover {
  float size;

  Laser shot;

  Asteroid () {
    super(random(width), random(height));
    this. size = 50;

    this.sx = random(5)-2; //Need to assign values, cause Mover just leaves them at 0
    this.sy = random(5)-2;
  }



  void render() {
    this.move();

    fill(100, 100, 255); 
    ellipse(this.x, this.y, this.size, this.size);

    if (this.x < 0) this.x = width;
    else if (this.x > width) this.x = 0;

    if (this.y < 0) this.y = height;
    else if (this.y > height) this.y = 0;
  }

  Asteroid (float x, float y) {
    super (x, y);
    this.x = x;
    this.y = y;
    this. size = 25;

    this.sx = random(10)-5; //Need to assign values, cause Mover just leaves them at 0
    this.sy = random(10)-5;
  }

  void explode() {
    this.move();

    asteroids.add(new Asteroid(this.x, this.y));
    asteroids.add(new Asteroid(this.x, this.y));
    asteroids.add(new Asteroid(this.x, this.y));

  }
}
