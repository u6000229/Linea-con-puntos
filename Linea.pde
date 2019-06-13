void setup(){
size(500,500);
background(255);

}
float xi=20.0,yi=20.0;
float xf=150.0,yf=200.0;
float m=(yf-yi)/(xf-xi);
float x=xi,y=yi;
float a,b;
void draw(){
 
 if(m<=1){
   b=xi;
   a=xf;
 }
 if(m>1){
   b=yi;
   a=yf;
 }
 for(float i=b;i<=a;i++){
  
 if(m<=1&&y<=yf){
   y=y+(m);
   x++;
    point(x,height-y-1);
    point(x,height-y);
    point(x,height-y+1);
 }
 if(m>1&&x<=xf){
   x=x+(1.0/m);
   y++;
     point(x,height-y-1);
    point(x,height-y);
    point(x,height-y+1);
 }
 }
}
