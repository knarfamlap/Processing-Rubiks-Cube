float angle = 0;
int sizeOfCube = 3;

void setup() {
  size(700, 700, P3D);
  smooth();
}


void draw() {
  background(155);
  translate(width / 2, height / 2, -1000);
  rotateY(angle);
  rotateZ(angle);
  
  Cube rubiksCube = new Cube(sizeOfCube);  
  rubiksCube.turnLeftFace();
   angle += 0.01;
}
