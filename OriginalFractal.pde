float increment = 60;

void setup(){
  size(600,600);
  rectMode(CENTER);
  background(200,200,0);
  sierpinski(300,300,height/3);
}

void keyReleased(){
  if(key == 'd' || key == 'D'){
    increment = constrain(increment / 3,5,541);
    background(200,200,0);
    sierpinski(300,300,height/3);
  }
  if(key == 'a' || key == 'A'){
    increment = constrain(increment * 3,5,541);
    background(200,200,0);
    sierpinski(300,300,height/3);
  }
  
}
void draw(){
}

void sierpinski(int x,int y,int siz){
  if(siz <= increment){
    rect(x,y,siz,siz);
  }
  else{
    sierpinski(x - siz, y, siz/3); //left
    sierpinski(x - siz, y - siz, siz/3); //up left
    sierpinski(x, y - siz, siz/3); //up
    sierpinski(height - (x - siz), y - siz, siz/3); // up right
    sierpinski(height - (x - siz), y, siz/3); //right
    sierpinski(height - (x - siz), height - (y - siz), siz/3); //down right
    sierpinski(x, height - (y - siz), siz/3); //down
    sierpinski(x - siz, height - (y - siz), siz/3); //down left
  }
  fill((int)(Math.random()*255));
  rect(x,y,siz,siz);
}

