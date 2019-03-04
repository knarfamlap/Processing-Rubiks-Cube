class Block{
  int cubeSize;
  int faceWidth = 100;
  PVector position;
  color[] colors = new color[6];
  
  Block(PVector position, int cubeSize){
    this.position = position;
    this.cubeSize = cubeSize;
    setColors();
  }
  
  void show(){
    for(int i = 0; i < colors.length; i++){
      createFaces(i, colors[i]);
    }  
  }
  
  void createFaces(int faceNumber, color faceColor){
    
    
    if( faceColor == color(0)) return;
    // Colors in the face with faceColor
    fill(faceColor);
    
    /*
     * Creates vertex that connects the 4 corners of a face.
     * (0, 0, 0) being the origin we are able to compose 6
     * different faces with the desires width of the variable faceWidth
     *
    */
    switch(faceNumber){
      case 0:
        //Left Face
        beginShape();
        createVertex(0, 0, 1);
        createVertex(0, 0, 0);
        createVertex(0, 1, 0);
        createVertex(0, 1, 1);
        endShape(CLOSE);
        break;
       case 1:
         //Right Face
        beginShape();
        createVertex(1, 0, 1);
        createVertex(1, 0, 0);
        createVertex(1, 1, 0);
        createVertex(1, 1, 1);
        endShape(CLOSE);
        break;
      case 2:
        //Top Face
        beginShape();
        createVertex(0, 0, 1);
        createVertex(0, 0, 0);
        createVertex(1, 0, 0);
        createVertex(1, 0, 1);
        endShape(CLOSE);
        break;
      case 3:
        // Bottom Face
        beginShape();
        createVertex(0, 1, 1);
        createVertex(0, 1, 0);
        createVertex(1, 1, 0);
        createVertex(1, 1, 1);
        endShape(CLOSE);
        break;
      case 4:
        //Back Face
        beginShape();
        createVertex(0, 0, 0);
        createVertex(1, 0, 0);
        createVertex(1, 1, 0);
        createVertex(0, 1, 0);
        endShape(CLOSE);
        break;
      case 5:
        //Front Face
        beginShape();
        createVertex(0, 0, 1);
        createVertex(1, 0, 1);
        createVertex(1, 1, 1);
        createVertex(0, 1, 1);
        endShape(CLOSE);
        break;
      }
    

  }
  
  
  // Method that assigns each block faces a color
  void setColors() {
    
    /*
     * Looking at the Red face of the Cube
     * Left Face(Position x = 0) = white
     * Right Face(Postion x = cubeSize - 1) = yellow
     * Top Face(Position y = 0) = blue
     * Bottom Face(Position y = cubeSize - 1) = green
     * Back Face(Position z = 0) = orange
     * Front Face(Position z = cubeSize - 1) = red
     * 
     * Esentially every block is a 1X1 rubiks cube. 
     * Each Block has colored faces.
    */
    
    for(int i = 0; i < colors.length; i++){
      colors[i] = color(0);
    }
    
    if (position.x == 0) {
      colors[0] = color(255); //white
    }
    if (position.x == cubeSize-1) {
      colors[1] = color(255, 255, 0); //yellow
    }
    if (position.y == 0) {
      colors[2] = color(0, 0, 255); //blue
    }
    if (position.y == cubeSize-1) {
      colors[3] = color(0, 255, 0); //green
    }
    if (position.z == 0) {
      colors[4] = color(255, 140, 0);//orange
    }
    if (position.z == cubeSize-1) {
      colors[5] = color(255, 0, 0); //red
    }
  } 
  
  // Helper method that makes it more easy to create a vertex
  void createVertex(int x, int y, int z){
    vertex((x-0.5)*faceWidth, (y-0.05)*faceWidth, (z-0.05)*faceWidth);
  }
}
