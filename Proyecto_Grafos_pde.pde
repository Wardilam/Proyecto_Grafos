  int Xposn1[] = {100, 400, 700, 400, 250, 550, 400, 100, 400, 700};
  int Yposn1[] = {100, 100, 100, 250, 400, 400, 550, 700, 700, 700};
                     //0  1  2  3  4  5  6  7  8  9
  int matrixn1[][] = {{0, 1, 0, 0, 0, 0, 0, 1, 0, 0},//0
                      {1, 0, 1, 1, 0, 0, 0, 0, 0, 0},//1
                      {0, 1, 0, 0, 0, 0, 0, 0, 0, 1},//2
                      {0, 1, 0, 0, 1, 1, 1, 0, 0, 0},//3
                      {0, 0, 0, 1, 0, 0, 1, 0, 0, 0},//4                 
                      {0, 0, 0, 1, 0, 0, 1, 0, 0, 0},//5
                      {0, 0, 0, 1, 1, 1, 0, 0, 1, 0},//6
                      {1, 0, 0, 0, 0, 0, 0, 0, 1, 0},//7
                      {0, 0, 0, 0, 0, 0, 1, 1, 0, 1},//8
                      {0, 0, 1, 0, 0, 0, 0, 0, 1, 0}};//9
              
  int Xposn2[] = {100, 200, 600, 700, 400, 200, 350, 350, 450, 450, 600};
  int Yposn2[] = {200, 200, 200, 200, 20 , 600, 600, 400, 400, 600, 600};
                     //0  1  2  3  4  5  6  7  8  9  10
  int matrixn2[][] = {{0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0},//0
                      {1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0},//1
                      {0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1},//2
                      {0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0},//3
                      {1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0},//4
                      {0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0},//5
                      {0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0},//6
                      {0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0},//7
                      {0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0},//8
                      {0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1},//9
                      {0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0}};//10
            
  
  
  
  int part = 1;
  int dibujo[] = new int[4];
  int lvl1[][] = new int[10][10];
  int lvl2[][] = new int[11][11];  

void Lines(int matrix[][], int Xpos[], int Ypos[]){      //Draw Line Function
  for(int j = 0; j < Xpos.length; j++){
    for(int k=0; k < Xpos.length; k++){
      if(matrix[k][j] == 1){ 
        stroke(212, 18, 18, 1);  
        line(Xpos[k], Ypos[k], Xpos[j], Ypos[j]);
      }
    }
  }
}
void Nodes(int Xpos[],int Ypos[] ){       //Node Function
  for(int i = 0; i < Xpos.length; i++){
    ellipse(Xpos[i],Ypos[i],30,30);
  }
}

int aux = 0;
int win = 0;
int count = 0;
void Victorylogic(int Numlineas, int Xpos[], int Ypos[], int lvl[][], int matrix[][]){
if(count == Numlineas){
  for(int i = 0;i<Ypos.length; i++){
    for(int j = 0; j < Ypos.length; j++){
    }
  }
  for(int i = 0; i < Ypos.length; i++){
    for(int j = 0; j < Ypos.length; j++){
      if(lvl[i][j]!=matrix[i][j]){
        win=1;
      }
    }
  }
}
  if((count==Numlineas)&&(win==0)){
    fill(0, 0, 0);
    textSize(35);
    textAlign(CENTER,CENTER);                                                           //////////WIN LOGIC
    text("Ha ganado el nivel",400,230);
    text("Avance al siguiente nivel con ENTER",400,250);
    if (keyPressed == true && key== ENTER){
      background(255, 204, 0);
      aux=0;
      count=0;
      win= 0;
      part++;
    }
  }
  if((count==Numlineas)&&(win==1)){
    fill(0, 0, 0);
    textSize(35);
    textAlign(CENTER,CENTER);
    text("Ha perdido",400,230);//
    text(" Para volver a intentar presione R",400,250);
    aux=0;
    count=0;
    win=0;
    Restart(lvl);
    for(int i = 0; i < Ypos.length; i++){
      for(int j = 0; j < Ypos.length; j++){
        lvl[i][j]=0;
      }
    }
  }
}

int Nlines(int [][]matrix){
  int Numlineas = 0;
    for(int i = 0; i < matrix.length; i++){ 
      for(int j = 0; j < matrix.length; j++){
        if(matrix[i][j]==1){
          Numlineas++;
        }
      }
    }
    return Numlineas;
}


void Map1(){
  Lines(matrixn1,Xposn1,Yposn1);
  Nodes(Xposn1,Yposn1);
  Nlines(matrixn1);
  Victorylogic((Nlines(matrixn1)/2),Xposn1,Yposn1,lvl1,matrixn1); 
}
void Map2(){
  Lines(matrixn2,Xposn2,Yposn2);
  Nodes(Xposn2,Yposn2);
  Nlines(matrixn2);
  Victorylogic((Nlines(matrixn2)/2),Xposn2,Yposn2,lvl2,matrixn2); 
}

void Erase(int[][]lvl){
  for(int i = 0; i < lvl.length; i++){       
    for(int j = 0; j < lvl.length; j++){
      lvl[i][j]=0;   //<------ Arrays = 0
    }
  }
}

void Restart(int [][]lvl){
  if (keyPressed==true&&key=='r'){     //Restart
    background(255, 204, 0);
    aux=0;
    count=0;
    win=0;
    Erase(lvl); 
  } 
}

void setup(){
  size(800,800);
  background(255, 204, 0);
  strokeWeight(10);
}

int Begin = 0;
void draw(){
    if(Begin == 0){
      textSize(35);
      textAlign(CENTER, CENTER);
      text("Taller 1 - Programación orientada a objetos", 400, 250);
      text("Enter para empezar", 400, 450);
      text("R para reiniciar", 400, 550);
      if(keyPressed == true && key == ENTER){
        Begin++;
        background(255, 204, 0);
      }
    }
    else{
      if(part == 1){
        Map1();
        Restart(lvl1);
  }
      if(part == 2){
        Map2();
        Restart(lvl2);
  }
      if(part == 3){
        fill(0, 0, 0);
        textSize(35);
        textAlign(CENTER,CENTER);
        text("Ha completado los 3 niveles con éxito",400,230);
 
  }

}
}
int k;
void Drawlogic(int Xpos[], int Ypos[], int matrix[][],int [][]lvl){
  if(aux == 0){
    for(int i = 0; i < Ypos.length; i++){
      if((mouseX >= (Xpos[i] - 10)) && (mouseX <= (Xpos[i] + 10)) && (mouseY >= (Ypos[i] - 10)) && ( mouseY <= (Ypos[i] + 10))){
        dibujo[0] = Xpos[i];
        dibujo[1] = Ypos[i];
        int k = i;
        aux++; 
      }
    }
  }
  else{
    for(int i = 0; i < Ypos.length; i++){
      if((mouseX >= (Xpos[i] - 10)) && (mouseX <= (Xpos[i] + 10)) && (mouseY >= (Ypos[i] - 10)) && (mouseY <= (Ypos[i] + 10))){
        dibujo[2] = Xpos[i];
        dibujo[3] = Ypos[i];
        if(matrix[k][i] == 1){
          stroke(212, 18, 18); 
          line(dibujo[0], dibujo[1], dibujo[2], dibujo[3]);
          dibujo[0] = dibujo[2];
          dibujo[1] = dibujo[3];
          lvl[i][k] = lvl[i][k]+1;
          lvl[k][i] = lvl[k][i]+1;
          if((lvl[i][k] > 1) && (lvl[k][i] > 1)){
            fill(243, 243, 28);
            println("Perdió");
            textSize(29);//tamaño del texto
            textAlign(CENTER, CENTER);//centralizar texto
            text("Ha perdido el nivel por repetir linea", 400, 230);//se coloco texto
            text(" para volver a intentar presione r",400 , 250);
          }
          int k = i;
          count++;
        }
      }
    }
  }
}
 
 void mouseClicked() {
  if(part == 1){
     Drawlogic(Xposn1, Yposn1, matrixn1, lvl1);
  }
  
  if(part == 2){
     Drawlogic(Xposn2, Yposn2, matrixn2, lvl2);
  }    
}
