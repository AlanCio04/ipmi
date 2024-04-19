PImage kiwi;

void setup(){
   size(800 , 400);
background(255);
///println(mouseX , mouseY);
kiwi = loadImage("kiwi2.jpg");
kiwi.resize(400 , 200);
}
void draw(){
  background(50);
  
  image(kiwi , 10 , 10);
  
  ///kiwi grande
  
  fill(106 , 70 , 3);
  noStroke();
ellipse(260, 300, 220, 170);

fill(131 , 95 , 3);
stroke(88 , 61 , 14);
strokeWeight(3);
circle(354 , 299 , 15);

///cascara del kiwi cortado

fill(106 , 70 , 3);
strokeWeight(1);
stroke(77 , 52 , 9);
circle(158, 312, 170);

///kiwi cortado parte verde

fill(109 , 157 , 65);
strokeWeight(10);
stroke(78 , 116 , 27);
circle(152 , 308, 160);

fill(199 , 214 , 117);
noStroke();
circle(154 , 308, 35);

noStroke();
fill(255);
circle(154 , 308 , 25);

///lineas verdes

size(800, 400);
stroke(48 , 88 , 11);
strokeWeight(2);
line(169, 286, 187, 255);
line(141 , 328 , 125 , 356);
line(174 , 322 , 197 , 337);
line(130 , 293 , 102 , 273);
line(146 , 280 , 142 , 250);
line(157 , 332 , 164 , 359);
line(127 , 311 , 101 , 323);
line(179 , 300 , 213 , 292);

///semillas

stroke(0);
strokeWeight(4);
point(123, 326);
point(146 , 350);
point(174 , 337);
point(190 , 311);
point(187 , 277);
point(158 , 276);
point(123 , 270);
point(117 , 297);

strokeWeight(3);
point(137 , 284);
point(178 , 286);
point(166 , 266);
point(121 , 336);
point(173 , 345);

//println(mouseX , mouseY);


}
