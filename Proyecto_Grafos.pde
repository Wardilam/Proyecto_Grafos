 
void setup(){
  size(750,750);
  background(255,204,0);
  int pos1x = 75; 
  int pos1y = 75;
  int posmidx = 385;
  int posmidy = 385;
  int pos2x = 675;
  int pos2y = 675;
  int inpos1x = 295;
  int inpos1y = 295;
  int inpos2x = 475;
  int inpos2y = 475;

  int Xpos[]= {pos1x, pos1x, pos2x, pos2x, posmidx, posmidx, posmidx, posmidx, inpos1x, inpos2x};
  int Ypos[]= {pos1y, pos2y, pos1y, pos2y, pos1y  , pos2y  , inpos1y, inpos2y, posmidy, posmidy};

                                                                    
  strokeWeight(10);
    /*line(pos1x, pos1y, posmidx, pos1y);//upper line left
    line(posmidx, pos1y, pos2x, pos1y);// upper line right
    line(pos2x, pos1y, pos2x, pos2y);//right side line
    line(pos1x, pos2y, posmidx,pos2y);//lower line left
    line(posmidx, pos2y, pos2x, pos2y);//lower line right
    line(pos1x, pos2y, pos1x, pos1y);//left side line
    line(posmidx,pos1y, posmidx, inpos1y);//upper center line
    line(posmidx,pos2y, posmidx, inpos2y);//lower center line
    line(posmidx,inpos2y, inpos2x, posmidy);//inside lower right line
    line(posmidx,inpos2y, inpos1x, posmidy);//inside lower left line
    line(posmidx,inpos1y, inpos2x, posmidy);//inside upper right line
    line(posmidx,inpos1y, inpos1x, posmidy);//inside upper left line*/

    /*ellipse(pos1x, pos1y,30,30);//upper left corner Node 0 
    ellipse(pos1x, pos2y,30,30);//lower left corner Node 1
    ellipse(pos2x, pos1y,30,30);//upper right corner Node 2
    ellipse(pos2x, pos2y,30,30);//lower right corner Node 3
    ellipse(posmidx, pos1y,30,30);//upper center Node 4
    ellipse(posmidx, pos2y,30,30);//lower center Node 5
    ellipse(posmidx, inpos1y,30,30);//inside upper center Node 6
    ellipse(posmidx, inpos2y,30,30);//inside lower center Node 7
    ellipse(inpos1x, posmidy,30,30);//inside left Node 8
    ellipse(inpos2x, posmidy,30,30);//inside right Node 9 */
    
                       //0  1  2  3  4  5  6  7  8  9
  int Matrixnodes[][] ={{0, 1, 0, 0, 1, 0, 0, 0, 0, 0},//0
                        {1, 0, 0, 0, 0, 1, 0, 0, 0, 0},//1 
                        {0, 0, 0, 1, 1, 0, 0, 0, 0, 0},//2    
                        {0, 0, 1, 0, 0, 1, 0, 0, 0, 0},//3
                        {1, 0, 1, 0, 0, 0, 1, 0, 0, 0},//4
                        {0, 1, 0, 1, 0, 0, 0, 1, 0, 0},//5
                        {0, 0, 0, 0, 1, 0, 0, 0, 1, 1},//6
                        {0, 0, 0, 0, 0, 1, 0, 0, 1, 1},//7
                        {0, 0, 0, 0, 0, 0, 1, 1, 0, 0},//8
                        {0, 0, 0, 0, 0, 0, 1, 1, 0, 0}};//9
  
  for(int i = 0; i < 10; i++){
    for(int j = 0; j < 10; j++){
      if(Matrixnodes[i][j] == 1)
        line(Xpos[i],Ypos[i], Xpos[j], Ypos[j]);
    }
  }
  for(int k = 0; k < 10; k++){
    ellipse(Xpos[k],Ypos[k],30,30);
  }    
}
void draw(){
  fill(0,0,0);
  if(mousePressed == true && mouseX == pos1x && mouseY == pos1y) ){
    ellipse(mouseX,mouseY,30,30);
  }
}
