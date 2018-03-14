void setup(){
  size(750,750);
  background(255,204,0);
  int pos1x = 75; 
  int pos1y = 75;
  int posmidx = 385;
  int posmidy = 385;
  int pos2x = 675;
  int pos2y = 675;
  int inpos2x = 475;
  int inpos2y = 475;
  int inpos1x = 295;
  int inpos1y = 295;
  strokeWeight(10);
    line(pos1x, pos1y, posmidx, pos1y);//upper line left
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
    line(posmidx,inpos1y, inpos1x, posmidy);//inside upper left line
  strokeWeight(32);
    point(pos1x, pos1y);//upper left corner
    point(pos1x, pos2y);//lower left corner
    point(pos2x, pos1y);//upper right corner
    point(pos2x, pos2y);//lower right corner
    point(posmidx, pos1y);//upper center
    point(posmidx, pos2y);//lower center
    point(posmidx, inpos1y);//inside upper center
    point(posmidx, inpos2y);//inside lower center
    point(inpos1x, posmidy);//inside left
    point(inpos2x, posmidy);//inside right
if((mousePressed==true) && (mouseX == pos1x ){
  posmousex = mouseX;
  posmousey = mouseY;
}
