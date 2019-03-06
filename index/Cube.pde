class Cube{
 Block[][][] blocks;
 int cubeSize;
 int blockWidth = 100;
 
 ArrayList<Block> rotatingBlocks = new ArrayList();

// Grouping faces for face turns
 ArrayList<Block> front = new ArrayList();
 ArrayList<Block> back = new ArrayList();
 ArrayList<Block> bottom = new ArrayList();
 ArrayList<Block> top = new ArrayList();
 ArrayList<Block> left = new ArrayList();
 ArrayList<Block> right = new ArrayList();
 
 
 Cube(int cubeSize){
   this.cubeSize = cubeSize;
   blocks = new Block[cubeSize][cubeSize][cubeSize];
  //Create blocks
  for(int i = 0; i < cubeSize; i++){ // depth
    for(int j = 0; j < cubeSize; j++){ // row
      for(int k = 0; k < cubeSize; k++){ // col
        blocks[i][j][k] = new Block(new PVector(i, j, k), cubeSize);
        if(blocks[i][j][k].position.x == 0){
          left.add(blocks[i][j][k]); //white face
        } 
        if(blocks[i][j][k].position.x == cubeSize - 1){
          right.add(blocks[i][j][k]); //yellow face
        } 
        if(blocks[i][j][k].position.y == 0){
          top.add(blocks[i][j][k]);  //blue face
        } 
        if(blocks[i][j][k].position.y == cubeSize - 1){
          bottom.add(blocks[i][j][k]); //green face
        } 
        if(blocks[i][j][k].position.z == 0){
          back.add(blocks[i][j][k]); //orange face
        } 
        if(blocks[i][j][k].position.z == cubeSize - 1){
          front.add(blocks[i][j][k]); //red face
        }      
      }
    }
  }
  showCube();
 }
 
 void showCube() {
   //Enbles the cube to be center to the canvas
   float center = (cubeSize - 1)/2.0;
  
   for(int i = 0; i < cubeSize; i++){
     for(int j = 0; j < cubeSize; j++){
       for(int k = 0; k < cubeSize; k++){
         pushMatrix();
          translate((i - center) * blockWidth, (j - center) * blockWidth, (k - center) * blockWidth);
          blocks[i][j][k].show();
          popMatrix(); 
        }
      }
    }
  } 
 
}
