/* TODO:
 
 ASTEROID:  
 -add a function that splits the asteroid into 4 parts by adding 3 more asteroids to the arraylist asteroids

 */

ArrayList<Laser> lasers = new ArrayList<Laser>();
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();

void setup() {
  size(640, 480);

  for (int i=0; i < 5; i++) asteroids.add(new Asteroid());
}

void draw() {
  background(0);

  for (int i=0; i < lasers.size(); i++) lasers.get(i).render();
  for (int i=0; i < asteroids.size(); i++) asteroids.get(i).render();

  //check for astrioid vs laser collision
  for (int i=0; i < asteroids.size(); i++) {
    for (int j=0; j < lasers.size() ; j++) {
      if (dist(asteroids.get(i).x, asteroids.get(i).y, lasers.get(j).x, lasers.get(j).y) < 50) {
        asteroids.get(i).explode();
        asteroids.remove(i);
        lasers.remove(j);
      }
    }
  }
  
}


void mousePressed() {
  lasers.add(new Laser(width/2, height/2, mouseX, mouseY)); // shoot lasers
}
