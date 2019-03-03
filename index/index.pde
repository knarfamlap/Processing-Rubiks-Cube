float rotateUpDown = 0;
float rotateLeftRight = 0;
int sizeOfCube = 3;
int faceWidth = 100;

void setup() {
  size(700, 700, P3D);
  smooth();
}


void draw() {
  background(155);
  translate(width / 2, height / 2, -1000);
  
 /*
  * Controllers:
  * W = Up rotation in the X axis
  * S = Down rotation in X axis
  * D = Right Rotation in Y axis
  * A = Left Rotation in Y axis
 */
   if(keyPressed){
     if(key == 'w' || key == 'W'){
       //Rotate Up
       rotateUpDown += 0.02;
     }
     if(key == 's' || key == 'S'){
       // rotate down
       rotateUpDown -= 0.02;
     }
     if(key == 'a' || key == 'A'){
       // rotate left
       rotateLeftRight += 0.02;
     }
      if(key == 'd' || key == 'D'){
        //rotate right
       rotateLeftRight -= 0.02;
     }
   }
   //Update Rotation in X orientation
   rotateX(rotateUpDown);
   // Updates Rotation in Y orientiation
   rotateY(rotateLeftRight);
   //Cube cube = new Cube(sizeOfCube);
}
