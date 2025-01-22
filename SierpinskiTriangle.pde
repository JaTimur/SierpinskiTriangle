int size=400;
public void setup(){size(500,500);}
public void draw(){sierpinski(50,450,400,size);}
public void mousePressed(){
  //one click for first increment
  //two clicks for second and third
  //one click for fourth; returns to normal triangle
  size-=75;
  if(size<0) size=400;
}
public void sierpinski(int x,int y,int len,int limit){
  if(len<=limit) triangle(x,y,x+len,y,x+len/2,y-len);
  else{
    sierpinski(x,y,len/2,limit);
    sierpinski(x+len/2,y,len/2,limit);
    sierpinski(x+len/4,y-len/2,len/2,limit);
  }
}
