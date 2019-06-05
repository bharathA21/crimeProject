import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import static java.lang.System.*;


private TreeMap<String, Integer> firstAdult = new TreeMap<String, Integer>();
private TreeMap<String, Integer> firstJuvenile = new TreeMap<String, Integer>();
private TreeMap<String, Integer> secondAdult = new TreeMap<String, Integer>();
private TreeMap<String, Integer> secondJuvenile = new TreeMap<String, Integer>();
private TreeMap<String, Integer> thirdAdult = new TreeMap<String, Integer>();
private TreeMap<String, Integer> thirdJuvenile = new TreeMap<String, Integer>();
private TreeMap<String, Integer> fourthAdult = new TreeMap<String, Integer>();
private TreeMap<String, Integer> fourthJuvenile = new TreeMap<String, Integer>();
private TreeMap<String, Integer> fifthAdult = new TreeMap<String, Integer>();
private TreeMap<String, Integer> fifthJuvenile = new TreeMap<String, Integer>();



//firstJuvenile = new TreeMap<String, Integer>();
//secondAdult = new TreeMap<String, Integer>();
//secondJuvenile = new TreeMap<String, Integer>();
//thirdAdult = new TreeMap<String, Integer>();
//thirdJuvenile = new TreeMap<String, Integer>();
//fourthAdult = new TreeMap<String, Integer>();
//fourthJuvenile = new TreeMap<String, Integer>();
//fifthAdult = new TreeMap<String, Integer>();
//fifthJuvenile = new TreeMap<String, Integer>();
PFont font;
int rectX, rectY;      
int circleX, circleY;  
int rectW = 200; 
int rectH = 100; 
int circleSize = 100;   
color rectColor, circleColor, dColor;
color rectHlight, circleHlight;
color currentColor;
color colorrsmt, colorav, colorwsp, coloreg, colorbv, colortr, colorlk;
boolean rectOne = false;
boolean rectTwo = false;
boolean circleOne = false;
boolean circleTwo = false;
boolean circleThree = false;
boolean circleFour = false;
boolean circleFive = false;

color color1=color(231, 215, 213);
color color2=color(225, 205, 202);
color color3=color(218, 193, 189);
color color4=color(209, 177, 172);
color color5=color(197, 157, 151);
color color6=color(182, 132, 125);
color color7=color(164, 101, 93);
color color8=color(141, 62, 52);
color color9=color(112, 14, 1);
color color10=color(90, 11, 1);
color color11=color(72, 9, 1);
color color12=color(58, 7, 1);
color color13=color(46, 6, 1);
color color14=color(37, 5, 1);

PShape bot;
String [] place = {"Apple_Valley", "Rosemount", "WSTP", "SSTP", "Eagan", "Burnsville", "TheRest", "Lakeville"};

String age="Adult";
String year="first";


String first="first";//2018
String second="second";//2017
String third="third";//2016
String fourth="fourth";//2015
String fifth="fifth";//2014
String adult="A";
String juvenile="J";
String output="";
CrimeData prog = new CrimeData( "C:\\Users\\aashi\\Desktop\\ADVCompSci18-19\\maps\\crimeRunner\\crimes.dat");
TreeMap<String, Integer> d = prog.theMap("first", "Adult");
TreeMap<String, Integer> e = new TreeMap<String, Integer>();


void setup() {
  size(1200, 800);
  bot = loadShape("C:\\Users\\aashi\\Desktop\\ADVCompSci18-19\\maps\\crimeRunner\\map3.svg");
  font = createFont("Verdana Bold", 32);
textFont(font);

  //prog.theMap("second", "Juvenile");
  //println(prog);

  //d = prog.theMap("first", "Adult");
  //for (String p : d.keySet()) {
  //  output+=p+" - "+d.get(p)+"\n";
  //}
  //println( output);
  colorrsmt=color(123, 115, 236);
  colorav=color(203, 12, 236);
  colorwsp=color(213, 10, 0);
  coloreg=color(232, 104, 12);
  colorbv=color(255, 196, 13);
  colortr=color(114, 219, 10);
  colorlk=color(115, 176, 226);




  rectColor = color(90);
  rectHlight = color(204);
  circleColor = color(120);
  circleHlight = color(204);
  dColor = color(102);
  currentColor = dColor;
  circleX = width/2+circleSize/2+10;
  circleY = height/2;
}
void draw() {






  mouseLoc();
  background(currentColor);
  if (rectOne) {
    fill(rectHlight);
    stroke(255);
    rect(990, 580, rectW, rectH);
    fill(rectColor);
    rect(990, 690, rectW, rectH);
    age="Adult";
  } else if (rectTwo) {
    fill(rectHlight);
    stroke(255);
    rect(990, 690, rectW, rectH);
    fill(rectColor);
    rect(990, 580, rectW, rectH);
    age="Juvenile";
  } else {
    fill(rectColor);
    stroke(255);
    rect(990, 580, rectW, rectH);
    rect(990, 690, rectW, rectH);
  }
  if (circleOne) {
    fill(circleHlight);
    stroke(255);
    ellipse(60, 740, circleSize, circleSize);
    fill(circleColor);
    ellipse(170, 740, circleSize, circleSize);
    ellipse(280, 740, circleSize, circleSize);
    ellipse(390, 740, circleSize, circleSize);
    ellipse(500, 740, circleSize, circleSize);
    year="first";
  } else if (circleTwo) {
    fill(circleHlight);
    stroke(255);
    ellipse(170, 740, circleSize, circleSize);
    fill(circleColor);
    ellipse(60, 740, circleSize, circleSize);
    ellipse(280, 740, circleSize, circleSize);
    ellipse(390, 740, circleSize, circleSize);
    ellipse(500, 740, circleSize, circleSize);
    year="second";
  } else if (circleThree) {
    fill(circleHlight);
    stroke(255);
    ellipse(280, 740, circleSize, circleSize);
    fill(circleColor);
    ellipse(60, 740, circleSize, circleSize);
    ellipse(170, 740, circleSize, circleSize);
    ellipse(390, 740, circleSize, circleSize);
    ellipse(500, 740, circleSize, circleSize);
    year="third";
  } else if (circleFour) {
    fill(circleHlight);
    stroke(255);
    ellipse(390, 740, circleSize, circleSize);
    fill(circleColor);
    ellipse(60, 740, circleSize, circleSize);
    ellipse(170, 740, circleSize, circleSize);
    ellipse(280, 740, circleSize, circleSize);
    ellipse(500, 740, circleSize, circleSize);
    year="fourth";
  } else if (circleFive) {
    fill(circleHlight);
    stroke(255);
    ellipse(500, 740, circleSize, circleSize);
    fill(circleColor);
    ellipse(60, 740, circleSize, circleSize);
    ellipse(170, 740, circleSize, circleSize);
    ellipse(280, 740, circleSize, circleSize);
    ellipse(390, 740, circleSize, circleSize);
    year="fifth";
  } else {
    fill(circleColor);
    stroke(255);
    ellipse(60, 740, circleSize, circleSize);
    ellipse(170, 740, circleSize, circleSize);
    ellipse(280, 740, circleSize, circleSize);
    ellipse(390, 740, circleSize, circleSize);
    ellipse(500, 740, circleSize, circleSize);
  }
  fill(50);
  textSize(20);
  text("2018", 35, 750);
  text("2017", 145, 750);
  text("2016", 255, 750);
  text("2015", 365, 750);
  text("2014", 475, 750);
  textSize(30);
  text("ADULT", 1040, 640);
  text("JUVENILE", 1030, 750);
  noStroke();
  shape(bot, 27, 49, 800, 600);
  theRest();
  rsmt();
  av();
  wsp();
  eg();
  bv();
  lk();
key();

  //d = prog.theMap(year, age);
  //for (String p : d.keySet()) {
  //  output+=p+" - "+d.get(p)+"\n";
  //}
  //println( output);
}

void mouseLoc() {
  if ( overCircle(60, 740, circleSize) ) {
    circleOne = true;
    rectOne = false;
    rectTwo = false;
    circleTwo = false;
    circleThree = false;
    circleFour = false;
    circleFive = false;
  } else if ( overCircle(170, 740, circleSize) ) {
    circleTwo = true;
    rectOne = false;
    rectTwo = false;
    circleOne = false;
    circleThree = false;
    circleFour = false;
    circleFive = false;
  } else if ( overCircle(280, 740, circleSize) ) {
    circleThree = true;
    rectOne = false;
    rectTwo = false;
    circleOne = false;
    circleTwo = false;
    circleFour = false;
    circleFive = false;
  } else if ( overCircle(390, 740, circleSize) ) {
    circleFour = true;
    rectOne = false;
    rectTwo = false;
    circleOne = false;
    circleTwo = false;
    circleThree = false;
    circleFive = false;
  } else if ( overCircle(500, 740, circleSize) ) {
    circleFive = true;
    rectOne = false;
    rectTwo = false;
    circleOne = false;
    circleTwo = false;
    circleThree = false;
    circleFour = false;
  } else if ( overRect(990, 580, rectW, rectH) ) {
    rectOne = true;
    rectTwo = false;
    circleOne = false;
    circleTwo = false;
    circleThree = false;
    circleFour = false;
    circleFive = false;
  } else if ( overRect(990, 690, rectW, rectH) ) {
    rectTwo = true;
    rectOne = false;
    circleOne = false;
    circleTwo = false;
    circleThree = false;
    circleFour = false;
    circleFive = false;
  } else {
    rectOne = false;
    rectTwo = false;
    circleOne = false;
    circleTwo = false;
    circleThree = false;
    circleFour = false;
    circleFive = false;
  }
}

void mousePressed() {

  if (circleOne) {
    output="";
    currentColor = circleColor;
    if (age.equals("Adult")) {
      firstAdult= prog.theMap(year, age);
      if (firstAdult.get("Rosemount")>325) {
        colorrsmt=color14;
      } else if (firstAdult.get("Rosemount")<=325 && firstAdult.get("Rosemount")>300) {
        colorrsmt=color13;
      } else if (firstAdult.get("Rosemount")<=300 && firstAdult.get("Rosemount")>275) {
        colorrsmt=color12;
      } else if (firstAdult.get("Rosemount")<=275 && firstAdult.get("Rosemount")>250) {
        colorrsmt=color11;
      } else if (firstAdult.get("Rosemount")<=250 && firstAdult.get("Rosemount")>225) {
        colorrsmt=color10;
      } else if (firstAdult.get("Rosemount")<=225 && firstAdult.get("Rosemount")>200) {
        colorrsmt=color9;
      } else if (firstAdult.get("Rosemount")<=200 && firstAdult.get("Rosemount")>175) {
        colorrsmt=color8;
      } else if (firstAdult.get("Rosemount")<=175 && firstAdult.get("Rosemount")>150) {
        colorrsmt=color7;
      } else if (firstAdult.get("Rosemount")<=150 && firstAdult.get("Rosemount")>125) {
        colorrsmt=color6;
      } else if (firstAdult.get("Rosemount")<=125 && firstAdult.get("Rosemount")>100) {
        colorrsmt=color5;
      } else if (firstAdult.get("Rosemount")<=100 && firstAdult.get("Rosemount")>75) {
        colorrsmt=color4;
      } else if (firstAdult.get("Rosemount")<=75 && firstAdult.get("Rosemount")>50) {
        colorrsmt=color3;
      } else if (firstAdult.get("Rosemount")<=50 && firstAdult.get("Rosemount")>25) {
        colorrsmt=color2;
      } else if (firstAdult.get("Rosemount")<=25 && firstAdult.get("Rosemount")>0) {
        colorrsmt=color1;
      }


      if (firstAdult.get("Apple Valley")>325) {
        colorav=color14;
      } else if (firstAdult.get("Apple Valley")<=325 && firstAdult.get("Apple Valley")>300) {
        colorav=color13;
      } else if (firstAdult.get("Apple Valley")<=300 && firstAdult.get("Apple Valley")>275) {
        colorav=color12;
      } else if (firstAdult.get("Apple Valley")<=275 && firstAdult.get("Apple Valley")>250) {
        colorav=color11;
      } else if (firstAdult.get("Apple Valley")<=250 && firstAdult.get("Apple Valley")>225) {
        colorav=color10;
      } else if (firstAdult.get("Apple Valley")<=225 && firstAdult.get("Apple Valley")>200) {
        colorav=color9;
      } else if (firstAdult.get("Apple Valley")<=200 && firstAdult.get("Apple Valley")>175) {
        colorav=color8;
      } else if (firstAdult.get("Apple Valley")<=175 && firstAdult.get("Apple Valley")>150) {
        colorav=color7;
      } else if (firstAdult.get("Apple Valley")<=150 && firstAdult.get("Apple Valley")>125) {
        colorav=color6;
      } else if (firstAdult.get("Apple Valley")<=125 && firstAdult.get("Apple Valley")>100) {
        colorav=color5;
      } else if (firstAdult.get("Apple Valley")<=100 && firstAdult.get("Apple Valley")>75) {
        colorav=color4;
      } else if (firstAdult.get("Apple Valley")<=75 && firstAdult.get("Apple Valley")>50) {
        colorav=color3;
      } else if (firstAdult.get("Apple Valley")<=50 && firstAdult.get("Apple Valley")>25) {
        colorav=color2;
      } else if (firstAdult.get("Apple Valley")<=25 && firstAdult.get("Apple Valley")>0) {
        colorav=color1;
      }


      if (firstAdult.get("Eagan")>325) {
        coloreg=color14;
      } else if (firstAdult.get("Eagan")<=325 && firstAdult.get("Eagan")>300) {
        coloreg=color13;
      } else if (firstAdult.get("Eagan")<=300 && firstAdult.get("Eagan")>275) {
        coloreg=color12;
      } else if (firstAdult.get("Eagan")<=275 && firstAdult.get("Eagan")>250) {
        coloreg=color11;
      } else if (firstAdult.get("Eagan")<=250 && firstAdult.get("Eagan")>225) {
        coloreg=color10;
      } else if (firstAdult.get("Eagan")<=225 && firstAdult.get("Eagan")>200) {
        coloreg=color9;
      } else if (firstAdult.get("Eagan")<=200 && firstAdult.get("Eagan")>175) {
        coloreg=color8;
      } else if (firstAdult.get("Eagan")<=175 && firstAdult.get("Eagan")>150) {
        coloreg=color7;
      } else if (firstAdult.get("Eagan")<=150 && firstAdult.get("Eagan")>125) {
        coloreg=color6;
      } else if (firstAdult.get("Eagan")<=125 && firstAdult.get("Eagan")>100) {
        coloreg=color5;
      } else if (firstAdult.get("Eagan")<=100 && firstAdult.get("Eagan")>75) {
        coloreg=color4;
      } else if (firstAdult.get("Eagan")<=75 && firstAdult.get("Eagan")>50) {
        coloreg=color3;
      } else if (firstAdult.get("Eagan")<=50 && firstAdult.get("Eagan")>25) {
        coloreg=color2;
      } else if (firstAdult.get("Eagan")<=25 && firstAdult.get("Eagan")>0) {
        coloreg=color1;
      }


      if (firstAdult.get("West St. Paul")>325) {
        colorwsp=color14;
      } else if (firstAdult.get("West St. Paul")<=325 && firstAdult.get("West St. Paul")>300) {
        colorwsp=color13;
      } else if (firstAdult.get("West St. Paul")<=300 && firstAdult.get("West St. Paul")>275) {
        colorwsp=color12;
      } else if (firstAdult.get("West St. Paul")<=275 && firstAdult.get("West St. Paul")>250) {
        colorwsp=color11;
      } else if (firstAdult.get("West St. Paul")<=250 && firstAdult.get("West St. Paul")>225) {
        colorwsp=color10;
      } else if (firstAdult.get("West St. Paul")<=225 && firstAdult.get("West St. Paul")>200) {
        colorwsp=color9;
      } else if (firstAdult.get("West St. Paul")<=200 && firstAdult.get("West St. Paul")>175) {
        colorwsp=color8;
      } else if (firstAdult.get("West St. Paul")<=175 && firstAdult.get("West St. Paul")>150) {
        colorwsp=color7;
      } else if (firstAdult.get("West St. Paul")<=150 && firstAdult.get("West St. Paul")>125) {
        colorwsp=color6;
      } else if (firstAdult.get("West St. Paul")<=125 && firstAdult.get("West St. Paul")>100) {
        colorwsp=color5;
      } else if (firstAdult.get("West St. Paul")<=100 && firstAdult.get("West St. Paul")>75) {
        colorwsp=color4;
      } else if (firstAdult.get("West St. Paul")<=75 && firstAdult.get("West St. Paul")>50) {
        colorwsp=color3;
      } else if (firstAdult.get("West St. Paul")<=50 && firstAdult.get("West St. Paul")>25) {
        colorwsp=color2;
      } else if (firstAdult.get("West St. Paul")<=25 && firstAdult.get("West St. Paul")>0) {
        colorwsp=color1;
      }


      if (firstAdult.get("South St. Paul")>325) {
        colorbv=color14;
      } else if (firstAdult.get("South St. Paul")<=325 && firstAdult.get("South St. Paul")>300) {
        colorbv=color13;
      } else if (firstAdult.get("South St. Paul")<=300 && firstAdult.get("South St. Paul")>275) {
        colorbv=color12;
      } else if (firstAdult.get("South St. Paul")<=275 && firstAdult.get("South St. Paul")>250) {
        colorbv=color11;
      } else if (firstAdult.get("South St. Paul")<=250 && firstAdult.get("South St. Paul")>225) {
        colorbv=color10;
      } else if (firstAdult.get("South St. Paul")<=225 && firstAdult.get("South St. Paul")>200) {
        colorbv=color9;
      } else if (firstAdult.get("South St. Paul")<=200 && firstAdult.get("South St. Paul")>175) {
        colorbv=color8;
      } else if (firstAdult.get("South St. Paul")<=175 && firstAdult.get("South St. Paul")>150) {
        colorbv=color7;
      } else if (firstAdult.get("South St. Paul")<=150 && firstAdult.get("South St. Paul")>125) {
        colorbv=color6;
      } else if (firstAdult.get("South St. Paul")<=125 && firstAdult.get("South St. Paul")>100) {
        colorbv=color5;
      } else if (firstAdult.get("South St. Paul")<=100 && firstAdult.get("South St. Paul")>75) {
        colorbv=color4;
      } else if (firstAdult.get("South St. Paul")<=75 && firstAdult.get("South St. Paul")>50) {
        colorbv=color3;
      } else if (firstAdult.get("South St. Paul")<=50 && firstAdult.get("South St. Paul")>25) {
        colorbv=color2;
      } else if (firstAdult.get("South St. Paul")<=25 && firstAdult.get("South St. Paul")>0) {
        colorbv=color1;
      }


      if (firstAdult.get("Lakeville")>325) {
        colorlk=color14;
      } else if (firstAdult.get("Lakeville")<=325 && firstAdult.get("Lakeville")>300) {
        colorlk=color13;
      } else if (firstAdult.get("Lakeville")<=300 && firstAdult.get("Lakeville")>275) {
        colorlk=color12;
      } else if (firstAdult.get("Lakeville")<=275 && firstAdult.get("Lakeville")>250) {
        colorlk=color11;
      } else if (firstAdult.get("Lakeville")<=250 && firstAdult.get("Lakeville")>225) {
        colorlk=color10;
      } else if (firstAdult.get("Lakeville")<=225 && firstAdult.get("Lakeville")>200) {
        colorlk=color9;
      } else if (firstAdult.get("Lakeville")<=200 && firstAdult.get("Lakeville")>175) {
        colorlk=color8;
      } else if (firstAdult.get("Lakeville")<=175 && firstAdult.get("Lakeville")>150) {
        colorlk=color7;
      } else if (firstAdult.get("Lakeville")<=150 && firstAdult.get("Lakeville")>125) {
        colorlk=color6;
      } else if (firstAdult.get("Lakeville")<=125 && firstAdult.get("Lakeville")>100) {
        colorlk=color5;
      } else if (firstAdult.get("Lakeville")<=100 && firstAdult.get("Lakeville")>75) {
        colorlk=color4;
      } else if (firstAdult.get("Lakeville")<=75 && firstAdult.get("Lakeville")>50) {
        colorlk=color3;
      } else if (firstAdult.get("Lakeville")<=50 && firstAdult.get("Lakeville")>25) {
        colorlk=color2;
      } else if (firstAdult.get("Lakeville")<=25 && firstAdult.get("Lakeville")>0) {
        colorlk=color1;
      }


      if (firstAdult.get("TheRest")>325) {
        colortr=color14;
      } else if (firstAdult.get("TheRest")<=325 && firstAdult.get("TheRest")>300) {
        colortr=color13;
      } else if (firstAdult.get("TheRest")<=300 && firstAdult.get("TheRest")>275) {
        colortr=color12;
      } else if (firstAdult.get("TheRest")<=275 && firstAdult.get("TheRest")>250) {
        colortr=color11;
      } else if (firstAdult.get("TheRest")<=250 && firstAdult.get("TheRest")>225) {
        colortr=color10;
      } else if (firstAdult.get("TheRest")<=225 && firstAdult.get("TheRest")>200) {
        colortr=color9;
      } else if (firstAdult.get("TheRest")<=200 && firstAdult.get("TheRest")>175) {
        colortr=color8;
      } else if (firstAdult.get("TheRest")<=175 && firstAdult.get("TheRest")>150) {
        colortr=color7;
      } else if (firstAdult.get("TheRest")<=150 && firstAdult.get("TheRest")>125) {
        colortr=color6;
      } else if (firstAdult.get("TheRest")<=125 && firstAdult.get("TheRest")>100) {
        colortr=color5;
      } else if (firstAdult.get("TheRest")<=100 && firstAdult.get("TheRest")>75) {
        colortr=color4;
      } else if (firstAdult.get("TheRest")<=75 && firstAdult.get("TheRest")>50) {
        colortr=color3;
      } else if (firstAdult.get("TheRest")<=50 && firstAdult.get("TheRest")>25) {
        colortr=color2;
      } else if (firstAdult.get("TheRest")<=25 && firstAdult.get("TheRest")>0) {
        colortr=color1;
      }
    } else if (age.equals("Juvenile")) {
      firstJuvenile= prog.theMap(year, age);
      if (firstJuvenile.get("Rosemount")>325) {
        colorrsmt=color14;
      } else if (firstJuvenile.get("Rosemount")<=325 && firstJuvenile.get("Rosemount")>300) {
        colorrsmt=color13;
      } else if (firstJuvenile.get("Rosemount")<=300 && firstJuvenile.get("Rosemount")>275) {
        colorrsmt=color12;
      } else if (firstJuvenile.get("Rosemount")<=275 && firstJuvenile.get("Rosemount")>250) {
        colorrsmt=color11;
      } else if (firstJuvenile.get("Rosemount")<=250 && firstJuvenile.get("Rosemount")>225) {
        colorrsmt=color10;
      } else if (firstJuvenile.get("Rosemount")<=225 && firstJuvenile.get("Rosemount")>200) {
        colorrsmt=color9;
      } else if (firstJuvenile.get("Rosemount")<=200 && firstJuvenile.get("Rosemount")>175) {
        colorrsmt=color8;
      } else if (firstJuvenile.get("Rosemount")<=175 && firstJuvenile.get("Rosemount")>150) {
        colorrsmt=color7;
      } else if (firstJuvenile.get("Rosemount")<=150 && firstJuvenile.get("Rosemount")>125) {
        colorrsmt=color6;
      } else if (firstJuvenile.get("Rosemount")<=125 && firstJuvenile.get("Rosemount")>100) {
        colorrsmt=color5;
      } else if (firstJuvenile.get("Rosemount")<=100 && firstJuvenile.get("Rosemount")>75) {
        colorrsmt=color4;
      } else if (firstJuvenile.get("Rosemount")<=75 && firstJuvenile.get("Rosemount")>50) {
        colorrsmt=color3;
      } else if (firstJuvenile.get("Rosemount")<=50 && firstJuvenile.get("Rosemount")>25) {
        colorrsmt=color2;
      } else if (firstJuvenile.get("Rosemount")<=25 && firstJuvenile.get("Rosemount")>0) {
        colorrsmt=color1;
      }


      if (firstJuvenile.get("Apple Valley")>325) {
        colorav=color14;
      } else if (firstJuvenile.get("Apple Valley")<=325 && firstJuvenile.get("Apple Valley")>300) {
        colorav=color13;
      } else if (firstJuvenile.get("Apple Valley")<=300 && firstJuvenile.get("Apple Valley")>275) {
        colorav=color12;
      } else if (firstJuvenile.get("Apple Valley")<=275 && firstJuvenile.get("Apple Valley")>250) {
        colorav=color11;
      } else if (firstJuvenile.get("Apple Valley")<=250 && firstJuvenile.get("Apple Valley")>225) {
        colorav=color10;
      } else if (firstJuvenile.get("Apple Valley")<=225 && firstJuvenile.get("Apple Valley")>200) {
        colorav=color9;
      } else if (firstJuvenile.get("Apple Valley")<=200 && firstJuvenile.get("Apple Valley")>175) {
        colorav=color8;
      } else if (firstJuvenile.get("Apple Valley")<=175 && firstJuvenile.get("Apple Valley")>150) {
        colorav=color7;
      } else if (firstJuvenile.get("Apple Valley")<=150 && firstJuvenile.get("Apple Valley")>125) {
        colorav=color6;
      } else if (firstJuvenile.get("Apple Valley")<=125 && firstJuvenile.get("Apple Valley")>100) {
        colorav=color5;
      } else if (firstJuvenile.get("Apple Valley")<=100 && firstJuvenile.get("Apple Valley")>75) {
        colorav=color4;
      } else if (firstJuvenile.get("Apple Valley")<=75 && firstJuvenile.get("Apple Valley")>50) {
        colorav=color3;
      } else if (firstJuvenile.get("Apple Valley")<=50 && firstJuvenile.get("Apple Valley")>25) {
        colorav=color2;
      } else if (firstJuvenile.get("Apple Valley")<=25 && firstJuvenile.get("Apple Valley")>0) {
        colorav=color1;
      }


      if (firstJuvenile.get("Eagan")>325) {
        coloreg=color14;
      } else if (firstJuvenile.get("Eagan")<=325 && firstJuvenile.get("Eagan")>300) {
        coloreg=color13;
      } else if (firstJuvenile.get("Eagan")<=300 && firstJuvenile.get("Eagan")>275) {
        coloreg=color12;
      } else if (firstJuvenile.get("Eagan")<=275 && firstJuvenile.get("Eagan")>250) {
        coloreg=color11;
      } else if (firstJuvenile.get("Eagan")<=250 && firstJuvenile.get("Eagan")>225) {
        coloreg=color10;
      } else if (firstJuvenile.get("Eagan")<=225 && firstJuvenile.get("Eagan")>200) {
        coloreg=color9;
      } else if (firstJuvenile.get("Eagan")<=200 && firstJuvenile.get("Eagan")>175) {
        coloreg=color8;
      } else if (firstJuvenile.get("Eagan")<=175 && firstJuvenile.get("Eagan")>150) {
        coloreg=color7;
      } else if (firstJuvenile.get("Eagan")<=150 && firstJuvenile.get("Eagan")>125) {
        coloreg=color6;
      } else if (firstJuvenile.get("Eagan")<=125 && firstJuvenile.get("Eagan")>100) {
        coloreg=color5;
      } else if (firstJuvenile.get("Eagan")<=100 && firstJuvenile.get("Eagan")>75) {
        coloreg=color4;
      } else if (firstJuvenile.get("Eagan")<=75 && firstJuvenile.get("Eagan")>50) {
        coloreg=color3;
      } else if (firstJuvenile.get("Eagan")<=50 && firstJuvenile.get("Eagan")>25) {
        coloreg=color2;
      } else if (firstJuvenile.get("Eagan")<=25 && firstJuvenile.get("Eagan")>0) {
        coloreg=color1;
      }


      if (firstJuvenile.get("West St. Paul")>325) {
        colorwsp=color14;
      } else if (firstJuvenile.get("West St. Paul")<=325 && firstJuvenile.get("West St. Paul")>300) {
        colorwsp=color13;
      } else if (firstJuvenile.get("West St. Paul")<=300 && firstJuvenile.get("West St. Paul")>275) {
        colorwsp=color12;
      } else if (firstJuvenile.get("West St. Paul")<=275 && firstJuvenile.get("West St. Paul")>250) {
        colorwsp=color11;
      } else if (firstJuvenile.get("West St. Paul")<=250 && firstJuvenile.get("West St. Paul")>225) {
        colorwsp=color10;
      } else if (firstJuvenile.get("West St. Paul")<=225 && firstJuvenile.get("West St. Paul")>200) {
        colorwsp=color9;
      } else if (firstJuvenile.get("West St. Paul")<=200 && firstJuvenile.get("West St. Paul")>175) {
        colorwsp=color8;
      } else if (firstJuvenile.get("West St. Paul")<=175 && firstJuvenile.get("West St. Paul")>150) {
        colorwsp=color7;
      } else if (firstJuvenile.get("West St. Paul")<=150 && firstJuvenile.get("West St. Paul")>125) {
        colorwsp=color6;
      } else if (firstJuvenile.get("West St. Paul")<=125 && firstJuvenile.get("West St. Paul")>100) {
        colorwsp=color5;
      } else if (firstJuvenile.get("West St. Paul")<=100 && firstJuvenile.get("West St. Paul")>75) {
        colorwsp=color4;
      } else if (firstJuvenile.get("West St. Paul")<=75 && firstJuvenile.get("West St. Paul")>50) {
        colorwsp=color3;
      } else if (firstJuvenile.get("West St. Paul")<=50 && firstJuvenile.get("West St. Paul")>25) {
        colorwsp=color2;
      } else if (firstJuvenile.get("West St. Paul")<=25 && firstJuvenile.get("West St. Paul")>0) {
        colorwsp=color1;
      }


      if (firstJuvenile.get("South St. Paul")>325) {
        colorbv=color14;
      } else if (firstJuvenile.get("South St. Paul")<=325 && firstJuvenile.get("South St. Paul")>300) {
        colorbv=color13;
      } else if (firstJuvenile.get("South St. Paul")<=300 && firstJuvenile.get("South St. Paul")>275) {
        colorbv=color12;
      } else if (firstJuvenile.get("South St. Paul")<=275 && firstJuvenile.get("South St. Paul")>250) {
        colorbv=color11;
      } else if (firstJuvenile.get("South St. Paul")<=250 && firstJuvenile.get("South St. Paul")>225) {
        colorbv=color10;
      } else if (firstJuvenile.get("South St. Paul")<=225 && firstJuvenile.get("South St. Paul")>200) {
        colorbv=color9;
      } else if (firstJuvenile.get("South St. Paul")<=200 && firstJuvenile.get("South St. Paul")>175) {
        colorbv=color8;
      } else if (firstJuvenile.get("South St. Paul")<=175 && firstJuvenile.get("South St. Paul")>150) {
        colorbv=color7;
      } else if (firstJuvenile.get("South St. Paul")<=150 && firstJuvenile.get("South St. Paul")>125) {
        colorbv=color6;
      } else if (firstJuvenile.get("South St. Paul")<=125 && firstJuvenile.get("South St. Paul")>100) {
        colorbv=color5;
      } else if (firstJuvenile.get("South St. Paul")<=100 && firstJuvenile.get("South St. Paul")>75) {
        colorbv=color4;
      } else if (firstJuvenile.get("South St. Paul")<=75 && firstJuvenile.get("South St. Paul")>50) {
        colorbv=color3;
      } else if (firstJuvenile.get("South St. Paul")<=50 && firstJuvenile.get("South St. Paul")>25) {
        colorbv=color2;
      } else if (firstJuvenile.get("South St. Paul")<=25 && firstJuvenile.get("South St. Paul")>0) {
        colorbv=color1;
      }


      if (firstJuvenile.get("Lakeville")>325) {
        colorlk=color14;
      } else if (firstJuvenile.get("Lakeville")<=325 && firstJuvenile.get("Lakeville")>300) {
        colorlk=color13;
      } else if (firstJuvenile.get("Lakeville")<=300 && firstJuvenile.get("Lakeville")>275) {
        colorlk=color12;
      } else if (firstJuvenile.get("Lakeville")<=275 && firstJuvenile.get("Lakeville")>250) {
        colorlk=color11;
      } else if (firstJuvenile.get("Lakeville")<=250 && firstJuvenile.get("Lakeville")>225) {
        colorlk=color10;
      } else if (firstJuvenile.get("Lakeville")<=225 && firstJuvenile.get("Lakeville")>200) {
        colorlk=color9;
      } else if (firstJuvenile.get("Lakeville")<=200 && firstJuvenile.get("Lakeville")>175) {
        colorlk=color8;
      } else if (firstJuvenile.get("Lakeville")<=175 && firstJuvenile.get("Lakeville")>150) {
        colorlk=color7;
      } else if (firstJuvenile.get("Lakeville")<=150 && firstJuvenile.get("Lakeville")>125) {
        colorlk=color6;
      } else if (firstJuvenile.get("Lakeville")<=125 && firstJuvenile.get("Lakeville")>100) {
        colorlk=color5;
      } else if (firstJuvenile.get("Lakeville")<=100 && firstJuvenile.get("Lakeville")>75) {
        colorlk=color4;
      } else if (firstJuvenile.get("Lakeville")<=75 && firstJuvenile.get("Lakeville")>50) {
        colorlk=color3;
      } else if (firstJuvenile.get("Lakeville")<=50 && firstJuvenile.get("Lakeville")>25) {
        colorlk=color2;
      } else if (firstJuvenile.get("Lakeville")<=25 && firstJuvenile.get("Lakeville")>0) {
        colorlk=color1;
      }


      if (firstJuvenile.get("TheRest")>325) {
        colortr=color14;
      } else if (firstJuvenile.get("TheRest")<=325 && firstJuvenile.get("TheRest")>300) {
        colortr=color13;
      } else if (firstJuvenile.get("TheRest")<=300 && firstJuvenile.get("TheRest")>275) {
        colortr=color12;
      } else if (firstJuvenile.get("TheRest")<=275 && firstJuvenile.get("TheRest")>250) {
        colortr=color11;
      } else if (firstJuvenile.get("TheRest")<=250 && firstJuvenile.get("TheRest")>225) {
        colortr=color10;
      } else if (firstJuvenile.get("TheRest")<=225 && firstJuvenile.get("TheRest")>200) {
        colortr=color9;
      } else if (firstJuvenile.get("TheRest")<=200 && firstJuvenile.get("TheRest")>175) {
        colortr=color8;
      } else if (firstJuvenile.get("TheRest")<=175 && firstJuvenile.get("TheRest")>150) {
        colortr=color7;
      } else if (firstJuvenile.get("TheRest")<=150 && firstJuvenile.get("TheRest")>125) {
        colortr=color6;
      } else if (firstJuvenile.get("TheRest")<=125 && firstJuvenile.get("TheRest")>100) {
        colortr=color5;
      } else if (firstJuvenile.get("TheRest")<=100 && firstJuvenile.get("TheRest")>75) {
        colortr=color4;
      } else if (firstJuvenile.get("TheRest")<=75 && firstJuvenile.get("TheRest")>50) {
        colortr=color3;
      } else if (firstJuvenile.get("TheRest")<=50 && firstJuvenile.get("TheRest")>25) {
        colortr=color2;
      } else if (firstJuvenile.get("TheRest")<=25 && firstJuvenile.get("TheRest")>0) {
        colortr=color1;
      }
    }
    e = prog.theMap(year, age);
    //upDate();
    for (String p : d.keySet()) {
      output+=p+" - "+e.get(p)+"\n";
    }
    println( output + year+ age+"\n");
  }
  if (circleTwo) {
    output="";
    currentColor = circleColor;
    if (age.equals("Adult")) {
      secondAdult= prog.theMap(year, age);
      if (secondAdult.get("Rosemount")>325) {
        colorrsmt=color14;
      } else if (secondAdult.get("Rosemount")<=325 && secondAdult.get("Rosemount")>300) {
        colorrsmt=color13;
      } else if (secondAdult.get("Rosemount")<=300 && secondAdult.get("Rosemount")>275) {
        colorrsmt=color12;
      } else if (secondAdult.get("Rosemount")<=275 && secondAdult.get("Rosemount")>250) {
        colorrsmt=color11;
      } else if (secondAdult.get("Rosemount")<=250 && secondAdult.get("Rosemount")>225) {
        colorrsmt=color10;
      } else if (secondAdult.get("Rosemount")<=225 && secondAdult.get("Rosemount")>200) {
        colorrsmt=color9;
      } else if (secondAdult.get("Rosemount")<=200 && secondAdult.get("Rosemount")>175) {
        colorrsmt=color8;
      } else if (secondAdult.get("Rosemount")<=175 && secondAdult.get("Rosemount")>150) {
        colorrsmt=color7;
      } else if (secondAdult.get("Rosemount")<=150 && secondAdult.get("Rosemount")>125) {
        colorrsmt=color6;
      } else if (secondAdult.get("Rosemount")<=125 && secondAdult.get("Rosemount")>100) {
        colorrsmt=color5;
      } else if (secondAdult.get("Rosemount")<=100 && secondAdult.get("Rosemount")>75) {
        colorrsmt=color4;
      } else if (secondAdult.get("Rosemount")<=75 && secondAdult.get("Rosemount")>50) {
        colorrsmt=color3;
      } else if (secondAdult.get("Rosemount")<=50 && secondAdult.get("Rosemount")>25) {
        colorrsmt=color2;
      } else if (secondAdult.get("Rosemount")<=25 && secondAdult.get("Rosemount")>0) {
        colorrsmt=color1;
      }


      if (secondAdult.get("Apple Valley")>325) {
        colorav=color14;
      } else if (secondAdult.get("Apple Valley")<=325 && secondAdult.get("Apple Valley")>300) {
        colorav=color13;
      } else if (secondAdult.get("Apple Valley")<=300 && secondAdult.get("Apple Valley")>275) {
        colorav=color12;
      } else if (secondAdult.get("Apple Valley")<=275 && secondAdult.get("Apple Valley")>250) {
        colorav=color11;
      } else if (secondAdult.get("Apple Valley")<=250 && secondAdult.get("Apple Valley")>225) {
        colorav=color10;
      } else if (secondAdult.get("Apple Valley")<=225 && secondAdult.get("Apple Valley")>200) {
        colorav=color9;
      } else if (secondAdult.get("Apple Valley")<=200 && secondAdult.get("Apple Valley")>175) {
        colorav=color8;
      } else if (secondAdult.get("Apple Valley")<=175 && secondAdult.get("Apple Valley")>150) {
        colorav=color7;
      } else if (secondAdult.get("Apple Valley")<=150 && secondAdult.get("Apple Valley")>125) {
        colorav=color6;
      } else if (secondAdult.get("Apple Valley")<=125 && secondAdult.get("Apple Valley")>100) {
        colorav=color5;
      } else if (secondAdult.get("Apple Valley")<=100 && secondAdult.get("Apple Valley")>75) {
        colorav=color4;
      } else if (secondAdult.get("Apple Valley")<=75 && secondAdult.get("Apple Valley")>50) {
        colorav=color3;
      } else if (secondAdult.get("Apple Valley")<=50 && secondAdult.get("Apple Valley")>25) {
        colorav=color2;
      } else if (secondAdult.get("Apple Valley")<=25 && secondAdult.get("Apple Valley")>0) {
        colorav=color1;
      }


      if (secondAdult.get("Eagan")>325) {
        coloreg=color14;
      } else if (secondAdult.get("Eagan")<=325 && secondAdult.get("Eagan")>300) {
        coloreg=color13;
      } else if (secondAdult.get("Eagan")<=300 && secondAdult.get("Eagan")>275) {
        coloreg=color12;
      } else if (secondAdult.get("Eagan")<=275 && secondAdult.get("Eagan")>250) {
        coloreg=color11;
      } else if (secondAdult.get("Eagan")<=250 && secondAdult.get("Eagan")>225) {
        coloreg=color10;
      } else if (secondAdult.get("Eagan")<=225 && secondAdult.get("Eagan")>200) {
        coloreg=color9;
      } else if (secondAdult.get("Eagan")<=200 && secondAdult.get("Eagan")>175) {
        coloreg=color8;
      } else if (secondAdult.get("Eagan")<=175 && secondAdult.get("Eagan")>150) {
        coloreg=color7;
      } else if (secondAdult.get("Eagan")<=150 && secondAdult.get("Eagan")>125) {
        coloreg=color6;
      } else if (secondAdult.get("Eagan")<=125 && secondAdult.get("Eagan")>100) {
        coloreg=color5;
      } else if (secondAdult.get("Eagan")<=100 && secondAdult.get("Eagan")>75) {
        coloreg=color4;
      } else if (secondAdult.get("Eagan")<=75 && secondAdult.get("Eagan")>50) {
        coloreg=color3;
      } else if (secondAdult.get("Eagan")<=50 && secondAdult.get("Eagan")>25) {
        coloreg=color2;
      } else if (secondAdult.get("Eagan")<=25 && secondAdult.get("Eagan")>0) {
        coloreg=color1;
      }


      if (secondAdult.get("West St. Paul")>325) {
        colorwsp=color14;
      } else if (secondAdult.get("West St. Paul")<=325 && secondAdult.get("West St. Paul")>300) {
        colorwsp=color13;
      } else if (secondAdult.get("West St. Paul")<=300 && secondAdult.get("West St. Paul")>275) {
        colorwsp=color12;
      } else if (secondAdult.get("West St. Paul")<=275 && secondAdult.get("West St. Paul")>250) {
        colorwsp=color11;
      } else if (secondAdult.get("West St. Paul")<=250 && secondAdult.get("West St. Paul")>225) {
        colorwsp=color10;
      } else if (secondAdult.get("West St. Paul")<=225 && secondAdult.get("West St. Paul")>200) {
        colorwsp=color9;
      } else if (secondAdult.get("West St. Paul")<=200 && secondAdult.get("West St. Paul")>175) {
        colorwsp=color8;
      } else if (secondAdult.get("West St. Paul")<=175 && secondAdult.get("West St. Paul")>150) {
        colorwsp=color7;
      } else if (secondAdult.get("West St. Paul")<=150 && secondAdult.get("West St. Paul")>125) {
        colorwsp=color6;
      } else if (secondAdult.get("West St. Paul")<=125 && secondAdult.get("West St. Paul")>100) {
        colorwsp=color5;
      } else if (secondAdult.get("West St. Paul")<=100 && secondAdult.get("West St. Paul")>75) {
        colorwsp=color4;
      } else if (secondAdult.get("West St. Paul")<=75 && secondAdult.get("West St. Paul")>50) {
        colorwsp=color3;
      } else if (secondAdult.get("West St. Paul")<=50 && secondAdult.get("West St. Paul")>25) {
        colorwsp=color2;
      } else if (secondAdult.get("West St. Paul")<=25 && secondAdult.get("West St. Paul")>0) {
        colorwsp=color1;
      }


      if (secondAdult.get("South St. Paul")>325) {
        colorbv=color14;
      } else if (secondAdult.get("South St. Paul")<=325 && secondAdult.get("South St. Paul")>300) {
        colorbv=color13;
      } else if (secondAdult.get("South St. Paul")<=300 && secondAdult.get("South St. Paul")>275) {
        colorbv=color12;
      } else if (secondAdult.get("South St. Paul")<=275 && secondAdult.get("South St. Paul")>250) {
        colorbv=color11;
      } else if (secondAdult.get("South St. Paul")<=250 && secondAdult.get("South St. Paul")>225) {
        colorbv=color10;
      } else if (secondAdult.get("South St. Paul")<=225 && secondAdult.get("South St. Paul")>200) {
        colorbv=color9;
      } else if (secondAdult.get("South St. Paul")<=200 && secondAdult.get("South St. Paul")>175) {
        colorbv=color8;
      } else if (secondAdult.get("South St. Paul")<=175 && secondAdult.get("South St. Paul")>150) {
        colorbv=color7;
      } else if (secondAdult.get("South St. Paul")<=150 && secondAdult.get("South St. Paul")>125) {
        colorbv=color6;
      } else if (secondAdult.get("South St. Paul")<=125 && secondAdult.get("South St. Paul")>100) {
        colorbv=color5;
      } else if (secondAdult.get("South St. Paul")<=100 && secondAdult.get("South St. Paul")>75) {
        colorbv=color4;
      } else if (secondAdult.get("South St. Paul")<=75 && secondAdult.get("South St. Paul")>50) {
        colorbv=color3;
      } else if (secondAdult.get("South St. Paul")<=50 && secondAdult.get("South St. Paul")>25) {
        colorbv=color2;
      } else if (secondAdult.get("South St. Paul")<=25 && secondAdult.get("South St. Paul")>0) {
        colorbv=color1;
      }


      if (secondAdult.get("Lakeville")>325) {
        colorlk=color14;
      } else if (secondAdult.get("Lakeville")<=325 && secondAdult.get("Lakeville")>300) {
        colorlk=color13;
      } else if (secondAdult.get("Lakeville")<=300 && secondAdult.get("Lakeville")>275) {
        colorlk=color12;
      } else if (secondAdult.get("Lakeville")<=275 && secondAdult.get("Lakeville")>250) {
        colorlk=color11;
      } else if (secondAdult.get("Lakeville")<=250 && secondAdult.get("Lakeville")>225) {
        colorlk=color10;
      } else if (secondAdult.get("Lakeville")<=225 && secondAdult.get("Lakeville")>200) {
        colorlk=color9;
      } else if (secondAdult.get("Lakeville")<=200 && secondAdult.get("Lakeville")>175) {
        colorlk=color8;
      } else if (secondAdult.get("Lakeville")<=175 && secondAdult.get("Lakeville")>150) {
        colorlk=color7;
      } else if (secondAdult.get("Lakeville")<=150 && secondAdult.get("Lakeville")>125) {
        colorlk=color6;
      } else if (secondAdult.get("Lakeville")<=125 && secondAdult.get("Lakeville")>100) {
        colorlk=color5;
      } else if (secondAdult.get("Lakeville")<=100 && secondAdult.get("Lakeville")>75) {
        colorlk=color4;
      } else if (secondAdult.get("Lakeville")<=75 && secondAdult.get("Lakeville")>50) {
        colorlk=color3;
      } else if (secondAdult.get("Lakeville")<=50 && secondAdult.get("Lakeville")>25) {
        colorlk=color2;
      } else if (secondAdult.get("Lakeville")<=25 && secondAdult.get("Lakeville")>0) {
        colorlk=color1;
      }


      if (secondAdult.get("TheRest")>325) {
        colortr=color14;
      } else if (secondAdult.get("TheRest")<=325 && secondAdult.get("TheRest")>300) {
        colortr=color13;
      } else if (secondAdult.get("TheRest")<=300 && secondAdult.get("TheRest")>275) {
        colortr=color12;
      } else if (secondAdult.get("TheRest")<=275 && secondAdult.get("TheRest")>250) {
        colortr=color11;
      } else if (secondAdult.get("TheRest")<=250 && secondAdult.get("TheRest")>225) {
        colortr=color10;
      } else if (secondAdult.get("TheRest")<=225 && secondAdult.get("TheRest")>200) {
        colortr=color9;
      } else if (secondAdult.get("TheRest")<=200 && secondAdult.get("TheRest")>175) {
        colortr=color8;
      } else if (secondAdult.get("TheRest")<=175 && secondAdult.get("TheRest")>150) {
        colortr=color7;
      } else if (secondAdult.get("TheRest")<=150 && secondAdult.get("TheRest")>125) {
        colortr=color6;
      } else if (secondAdult.get("TheRest")<=125 && secondAdult.get("TheRest")>100) {
        colortr=color5;
      } else if (secondAdult.get("TheRest")<=100 && secondAdult.get("TheRest")>75) {
        colortr=color4;
      } else if (secondAdult.get("TheRest")<=75 && secondAdult.get("TheRest")>50) {
        colortr=color3;
      } else if (secondAdult.get("TheRest")<=50 && secondAdult.get("TheRest")>25) {
        colortr=color2;
      } else if (secondAdult.get("TheRest")<=25 && secondAdult.get("TheRest")>0) {
        colortr=color1;
      }
    } else if (age.equals("Juvenile")) {
      secondJuvenile= prog.theMap(year, age);
      if (secondJuvenile.get("Rosemount")>325) {
        colorrsmt=color14;
      } else if (secondJuvenile.get("Rosemount")<=325 && secondJuvenile.get("Rosemount")>300) {
        colorrsmt=color13;
      } else if (secondJuvenile.get("Rosemount")<=300 && secondJuvenile.get("Rosemount")>275) {
        colorrsmt=color12;
      } else if (secondJuvenile.get("Rosemount")<=275 && secondJuvenile.get("Rosemount")>250) {
        colorrsmt=color11;
      } else if (secondJuvenile.get("Rosemount")<=250 && secondJuvenile.get("Rosemount")>225) {
        colorrsmt=color10;
      } else if (secondJuvenile.get("Rosemount")<=225 && secondJuvenile.get("Rosemount")>200) {
        colorrsmt=color9;
      } else if (secondJuvenile.get("Rosemount")<=200 && secondJuvenile.get("Rosemount")>175) {
        colorrsmt=color8;
      } else if (secondJuvenile.get("Rosemount")<=175 && secondJuvenile.get("Rosemount")>150) {
        colorrsmt=color7;
      } else if (secondJuvenile.get("Rosemount")<=150 && secondJuvenile.get("Rosemount")>125) {
        colorrsmt=color6;
      } else if (secondJuvenile.get("Rosemount")<=125 && secondJuvenile.get("Rosemount")>100) {
        colorrsmt=color5;
      } else if (secondJuvenile.get("Rosemount")<=100 && secondJuvenile.get("Rosemount")>75) {
        colorrsmt=color4;
      } else if (secondJuvenile.get("Rosemount")<=75 && secondJuvenile.get("Rosemount")>50) {
        colorrsmt=color3;
      } else if (secondJuvenile.get("Rosemount")<=50 && secondJuvenile.get("Rosemount")>25) {
        colorrsmt=color2;
      } else if (secondJuvenile.get("Rosemount")<=25 && secondJuvenile.get("Rosemount")>0) {
        colorrsmt=color1;
      }


      if (secondJuvenile.get("Apple Valley")>325) {
        colorav=color14;
      } else if (secondJuvenile.get("Apple Valley")<=325 && secondJuvenile.get("Apple Valley")>300) {
        colorav=color13;
      } else if (secondJuvenile.get("Apple Valley")<=300 && secondJuvenile.get("Apple Valley")>275) {
        colorav=color12;
      } else if (secondJuvenile.get("Apple Valley")<=275 && secondJuvenile.get("Apple Valley")>250) {
        colorav=color11;
      } else if (secondJuvenile.get("Apple Valley")<=250 && secondJuvenile.get("Apple Valley")>225) {
        colorav=color10;
      } else if (secondJuvenile.get("Apple Valley")<=225 && secondJuvenile.get("Apple Valley")>200) {
        colorav=color9;
      } else if (secondJuvenile.get("Apple Valley")<=200 && secondJuvenile.get("Apple Valley")>175) {
        colorav=color8;
      } else if (secondJuvenile.get("Apple Valley")<=175 && secondJuvenile.get("Apple Valley")>150) {
        colorav=color7;
      } else if (secondJuvenile.get("Apple Valley")<=150 && secondJuvenile.get("Apple Valley")>125) {
        colorav=color6;
      } else if (secondJuvenile.get("Apple Valley")<=125 && secondJuvenile.get("Apple Valley")>100) {
        colorav=color5;
      } else if (secondJuvenile.get("Apple Valley")<=100 && secondJuvenile.get("Apple Valley")>75) {
        colorav=color4;
      } else if (secondJuvenile.get("Apple Valley")<=75 && secondJuvenile.get("Apple Valley")>50) {
        colorav=color3;
      } else if (secondJuvenile.get("Apple Valley")<=50 && secondJuvenile.get("Apple Valley")>25) {
        colorav=color2;
      } else if (secondJuvenile.get("Apple Valley")<=25 && secondJuvenile.get("Apple Valley")>0) {
        colorav=color1;
      }


      if (secondJuvenile.get("Eagan")>325) {
        coloreg=color14;
      } else if (secondJuvenile.get("Eagan")<=325 && secondJuvenile.get("Eagan")>300) {
        coloreg=color13;
      } else if (secondJuvenile.get("Eagan")<=300 && secondJuvenile.get("Eagan")>275) {
        coloreg=color12;
      } else if (secondJuvenile.get("Eagan")<=275 && secondJuvenile.get("Eagan")>250) {
        coloreg=color11;
      } else if (secondJuvenile.get("Eagan")<=250 && secondJuvenile.get("Eagan")>225) {
        coloreg=color10;
      } else if (secondJuvenile.get("Eagan")<=225 && secondJuvenile.get("Eagan")>200) {
        coloreg=color9;
      } else if (secondJuvenile.get("Eagan")<=200 && secondJuvenile.get("Eagan")>175) {
        coloreg=color8;
      } else if (secondJuvenile.get("Eagan")<=175 && secondJuvenile.get("Eagan")>150) {
        coloreg=color7;
      } else if (secondJuvenile.get("Eagan")<=150 && secondJuvenile.get("Eagan")>125) {
        coloreg=color6;
      } else if (secondJuvenile.get("Eagan")<=125 && secondJuvenile.get("Eagan")>100) {
        coloreg=color5;
      } else if (secondJuvenile.get("Eagan")<=100 && secondJuvenile.get("Eagan")>75) {
        coloreg=color4;
      } else if (secondJuvenile.get("Eagan")<=75 && secondJuvenile.get("Eagan")>50) {
        coloreg=color3;
      } else if (secondJuvenile.get("Eagan")<=50 && secondJuvenile.get("Eagan")>25) {
        coloreg=color2;
      } else if (secondJuvenile.get("Eagan")<=25 && secondJuvenile.get("Eagan")>0) {
        coloreg=color1;
      }


      if (secondJuvenile.get("West St. Paul")>325) {
        colorwsp=color14;
      } else if (secondJuvenile.get("West St. Paul")<=325 && secondJuvenile.get("West St. Paul")>300) {
        colorwsp=color13;
      } else if (secondJuvenile.get("West St. Paul")<=300 && secondJuvenile.get("West St. Paul")>275) {
        colorwsp=color12;
      } else if (secondJuvenile.get("West St. Paul")<=275 && secondJuvenile.get("West St. Paul")>250) {
        colorwsp=color11;
      } else if (secondJuvenile.get("West St. Paul")<=250 && secondJuvenile.get("West St. Paul")>225) {
        colorwsp=color10;
      } else if (secondJuvenile.get("West St. Paul")<=225 && secondJuvenile.get("West St. Paul")>200) {
        colorwsp=color9;
      } else if (secondJuvenile.get("West St. Paul")<=200 && secondJuvenile.get("West St. Paul")>175) {
        colorwsp=color8;
      } else if (secondJuvenile.get("West St. Paul")<=175 && secondJuvenile.get("West St. Paul")>150) {
        colorwsp=color7;
      } else if (secondJuvenile.get("West St. Paul")<=150 && secondJuvenile.get("West St. Paul")>125) {
        colorwsp=color6;
      } else if (secondJuvenile.get("West St. Paul")<=125 && secondJuvenile.get("West St. Paul")>100) {
        colorwsp=color5;
      } else if (secondJuvenile.get("West St. Paul")<=100 && secondJuvenile.get("West St. Paul")>75) {
        colorwsp=color4;
      } else if (secondJuvenile.get("West St. Paul")<=75 && secondJuvenile.get("West St. Paul")>50) {
        colorwsp=color3;
      } else if (secondJuvenile.get("West St. Paul")<=50 && secondJuvenile.get("West St. Paul")>25) {
        colorwsp=color2;
      } else if (secondJuvenile.get("West St. Paul")<=25 && secondJuvenile.get("West St. Paul")>0) {
        colorwsp=color1;
      }


      if (secondJuvenile.get("South St. Paul")>325) {
        colorbv=color14;
      } else if (secondJuvenile.get("South St. Paul")<=325 && secondJuvenile.get("South St. Paul")>300) {
        colorbv=color13;
      } else if (secondJuvenile.get("South St. Paul")<=300 && secondJuvenile.get("South St. Paul")>275) {
        colorbv=color12;
      } else if (secondJuvenile.get("South St. Paul")<=275 && secondJuvenile.get("South St. Paul")>250) {
        colorbv=color11;
      } else if (secondJuvenile.get("South St. Paul")<=250 && secondJuvenile.get("South St. Paul")>225) {
        colorbv=color10;
      } else if (secondJuvenile.get("South St. Paul")<=225 && secondJuvenile.get("South St. Paul")>200) {
        colorbv=color9;
      } else if (secondJuvenile.get("South St. Paul")<=200 && secondJuvenile.get("South St. Paul")>175) {
        colorbv=color8;
      } else if (secondJuvenile.get("South St. Paul")<=175 && secondJuvenile.get("South St. Paul")>150) {
        colorbv=color7;
      } else if (secondJuvenile.get("South St. Paul")<=150 && secondJuvenile.get("South St. Paul")>125) {
        colorbv=color6;
      } else if (secondJuvenile.get("South St. Paul")<=125 && secondJuvenile.get("South St. Paul")>100) {
        colorbv=color5;
      } else if (secondJuvenile.get("South St. Paul")<=100 && secondJuvenile.get("South St. Paul")>75) {
        colorbv=color4;
      } else if (secondJuvenile.get("South St. Paul")<=75 && secondJuvenile.get("South St. Paul")>50) {
        colorbv=color3;
      } else if (secondJuvenile.get("South St. Paul")<=50 && secondJuvenile.get("South St. Paul")>25) {
        colorbv=color2;
      } else if (secondJuvenile.get("South St. Paul")<=25 && secondJuvenile.get("South St. Paul")>0) {
        colorbv=color1;
      }


      if (secondJuvenile.get("Lakeville")>325) {
        colorlk=color14;
      } else if (secondJuvenile.get("Lakeville")<=325 && secondJuvenile.get("Lakeville")>300) {
        colorlk=color13;
      } else if (secondJuvenile.get("Lakeville")<=300 && secondJuvenile.get("Lakeville")>275) {
        colorlk=color12;
      } else if (secondJuvenile.get("Lakeville")<=275 && secondJuvenile.get("Lakeville")>250) {
        colorlk=color11;
      } else if (secondJuvenile.get("Lakeville")<=250 && secondJuvenile.get("Lakeville")>225) {
        colorlk=color10;
      } else if (secondJuvenile.get("Lakeville")<=225 && secondJuvenile.get("Lakeville")>200) {
        colorlk=color9;
      } else if (secondJuvenile.get("Lakeville")<=200 && secondJuvenile.get("Lakeville")>175) {
        colorlk=color8;
      } else if (secondJuvenile.get("Lakeville")<=175 && secondJuvenile.get("Lakeville")>150) {
        colorlk=color7;
      } else if (secondJuvenile.get("Lakeville")<=150 && secondJuvenile.get("Lakeville")>125) {
        colorlk=color6;
      } else if (secondJuvenile.get("Lakeville")<=125 && secondJuvenile.get("Lakeville")>100) {
        colorlk=color5;
      } else if (secondJuvenile.get("Lakeville")<=100 && secondJuvenile.get("Lakeville")>75) {
        colorlk=color4;
      } else if (secondJuvenile.get("Lakeville")<=75 && secondJuvenile.get("Lakeville")>50) {
        colorlk=color3;
      } else if (secondJuvenile.get("Lakeville")<=50 && secondJuvenile.get("Lakeville")>25) {
        colorlk=color2;
      } else if (secondJuvenile.get("Lakeville")<=25 && secondJuvenile.get("Lakeville")>0) {
        colorlk=color1;
      }


      if (secondJuvenile.get("TheRest")>325) {
        colortr=color14;
      } else if (secondJuvenile.get("TheRest")<=325 && secondJuvenile.get("TheRest")>300) {
        colortr=color13;
      } else if (secondJuvenile.get("TheRest")<=300 && secondJuvenile.get("TheRest")>275) {
        colortr=color12;
      } else if (secondJuvenile.get("TheRest")<=275 && secondJuvenile.get("TheRest")>250) {
        colortr=color11;
      } else if (secondJuvenile.get("TheRest")<=250 && secondJuvenile.get("TheRest")>225) {
        colortr=color10;
      } else if (secondJuvenile.get("TheRest")<=225 && secondJuvenile.get("TheRest")>200) {
        colortr=color9;
      } else if (secondJuvenile.get("TheRest")<=200 && secondJuvenile.get("TheRest")>175) {
        colortr=color8;
      } else if (secondJuvenile.get("TheRest")<=175 && secondJuvenile.get("TheRest")>150) {
        colortr=color7;
      } else if (secondJuvenile.get("TheRest")<=150 && secondJuvenile.get("TheRest")>125) {
        colortr=color6;
      } else if (secondJuvenile.get("TheRest")<=125 && secondJuvenile.get("TheRest")>100) {
        colortr=color5;
      } else if (secondJuvenile.get("TheRest")<=100 && secondJuvenile.get("TheRest")>75) {
        colortr=color4;
      } else if (secondJuvenile.get("TheRest")<=75 && secondJuvenile.get("TheRest")>50) {
        colortr=color3;
      } else if (secondJuvenile.get("TheRest")<=50 && secondJuvenile.get("TheRest")>25) {
        colortr=color2;
      } else if (secondJuvenile.get("TheRest")<=25 && secondJuvenile.get("TheRest")>0) {
        colortr=color1;
      }
    }



    e = prog.theMap(year, age);

    for (String p : e.keySet()) {
      output+=p+" - "+e.get(p)+"\n";
    }
    //println( output);
    println( output + year+ age+"\n");
  }
  if (circleThree) {
    output="";
    currentColor = circleColor;
    if (age.equals("Adult")) {
      thirdAdult= prog.theMap(year, age);
      if (thirdAdult.get("Rosemount")>325) {
        colorrsmt=color14;
      } else if (thirdAdult.get("Rosemount")<=325 && thirdAdult.get("Rosemount")>300) {
        colorrsmt=color13;
      } else if (thirdAdult.get("Rosemount")<=300 && thirdAdult.get("Rosemount")>275) {
        colorrsmt=color12;
      } else if (thirdAdult.get("Rosemount")<=275 && thirdAdult.get("Rosemount")>250) {
        colorrsmt=color11;
      } else if (thirdAdult.get("Rosemount")<=250 && thirdAdult.get("Rosemount")>225) {
        colorrsmt=color10;
      } else if (thirdAdult.get("Rosemount")<=225 && thirdAdult.get("Rosemount")>200) {
        colorrsmt=color9;
      } else if (thirdAdult.get("Rosemount")<=200 && thirdAdult.get("Rosemount")>175) {
        colorrsmt=color8;
      } else if (thirdAdult.get("Rosemount")<=175 && thirdAdult.get("Rosemount")>150) {
        colorrsmt=color7;
      } else if (thirdAdult.get("Rosemount")<=150 && thirdAdult.get("Rosemount")>125) {
        colorrsmt=color6;
      } else if (thirdAdult.get("Rosemount")<=125 && thirdAdult.get("Rosemount")>100) {
        colorrsmt=color5;
      } else if (thirdAdult.get("Rosemount")<=100 && thirdAdult.get("Rosemount")>75) {
        colorrsmt=color4;
      } else if (thirdAdult.get("Rosemount")<=75 && thirdAdult.get("Rosemount")>50) {
        colorrsmt=color3;
      } else if (thirdAdult.get("Rosemount")<=50 && thirdAdult.get("Rosemount")>25) {
        colorrsmt=color2;
      } else if (thirdAdult.get("Rosemount")<=25 && thirdAdult.get("Rosemount")>0) {
        colorrsmt=color1;
      }


      if (thirdAdult.get("Apple Valley")>325) {
        colorav=color14;
      } else if (thirdAdult.get("Apple Valley")<=325 && thirdAdult.get("Apple Valley")>300) {
        colorav=color13;
      } else if (thirdAdult.get("Apple Valley")<=300 && thirdAdult.get("Apple Valley")>275) {
        colorav=color12;
      } else if (thirdAdult.get("Apple Valley")<=275 && thirdAdult.get("Apple Valley")>250) {
        colorav=color11;
      } else if (thirdAdult.get("Apple Valley")<=250 && thirdAdult.get("Apple Valley")>225) {
        colorav=color10;
      } else if (thirdAdult.get("Apple Valley")<=225 && thirdAdult.get("Apple Valley")>200) {
        colorav=color9;
      } else if (thirdAdult.get("Apple Valley")<=200 && thirdAdult.get("Apple Valley")>175) {
        colorav=color8;
      } else if (thirdAdult.get("Apple Valley")<=175 && thirdAdult.get("Apple Valley")>150) {
        colorav=color7;
      } else if (thirdAdult.get("Apple Valley")<=150 && thirdAdult.get("Apple Valley")>125) {
        colorav=color6;
      } else if (thirdAdult.get("Apple Valley")<=125 && thirdAdult.get("Apple Valley")>100) {
        colorav=color5;
      } else if (thirdAdult.get("Apple Valley")<=100 && thirdAdult.get("Apple Valley")>75) {
        colorav=color4;
      } else if (thirdAdult.get("Apple Valley")<=75 && thirdAdult.get("Apple Valley")>50) {
        colorav=color3;
      } else if (thirdAdult.get("Apple Valley")<=50 && thirdAdult.get("Apple Valley")>25) {
        colorav=color2;
      } else if (thirdAdult.get("Apple Valley")<=25 && thirdAdult.get("Apple Valley")>0) {
        colorav=color1;
      }


      if (thirdAdult.get("Eagan")>325) {
        coloreg=color14;
      } else if (thirdAdult.get("Eagan")<=325 && thirdAdult.get("Eagan")>300) {
        coloreg=color13;
      } else if (thirdAdult.get("Eagan")<=300 && thirdAdult.get("Eagan")>275) {
        coloreg=color12;
      } else if (thirdAdult.get("Eagan")<=275 && thirdAdult.get("Eagan")>250) {
        coloreg=color11;
      } else if (thirdAdult.get("Eagan")<=250 && thirdAdult.get("Eagan")>225) {
        coloreg=color10;
      } else if (thirdAdult.get("Eagan")<=225 && thirdAdult.get("Eagan")>200) {
        coloreg=color9;
      } else if (thirdAdult.get("Eagan")<=200 && thirdAdult.get("Eagan")>175) {
        coloreg=color8;
      } else if (thirdAdult.get("Eagan")<=175 && thirdAdult.get("Eagan")>150) {
        coloreg=color7;
      } else if (thirdAdult.get("Eagan")<=150 && thirdAdult.get("Eagan")>125) {
        coloreg=color6;
      } else if (thirdAdult.get("Eagan")<=125 && thirdAdult.get("Eagan")>100) {
        coloreg=color5;
      } else if (thirdAdult.get("Eagan")<=100 && thirdAdult.get("Eagan")>75) {
        coloreg=color4;
      } else if (thirdAdult.get("Eagan")<=75 && thirdAdult.get("Eagan")>50) {
        coloreg=color3;
      } else if (thirdAdult.get("Eagan")<=50 && thirdAdult.get("Eagan")>25) {
        coloreg=color2;
      } else if (thirdAdult.get("Eagan")<=25 && thirdAdult.get("Eagan")>0) {
        coloreg=color1;
      }


      if (thirdAdult.get("West St. Paul")>325) {
        colorwsp=color14;
      } else if (thirdAdult.get("West St. Paul")<=325 && thirdAdult.get("West St. Paul")>300) {
        colorwsp=color13;
      } else if (thirdAdult.get("West St. Paul")<=300 && thirdAdult.get("West St. Paul")>275) {
        colorwsp=color12;
      } else if (thirdAdult.get("West St. Paul")<=275 && thirdAdult.get("West St. Paul")>250) {
        colorwsp=color11;
      } else if (thirdAdult.get("West St. Paul")<=250 && thirdAdult.get("West St. Paul")>225) {
        colorwsp=color10;
      } else if (thirdAdult.get("West St. Paul")<=225 && thirdAdult.get("West St. Paul")>200) {
        colorwsp=color9;
      } else if (thirdAdult.get("West St. Paul")<=200 && thirdAdult.get("West St. Paul")>175) {
        colorwsp=color8;
      } else if (thirdAdult.get("West St. Paul")<=175 && thirdAdult.get("West St. Paul")>150) {
        colorwsp=color7;
      } else if (thirdAdult.get("West St. Paul")<=150 && thirdAdult.get("West St. Paul")>125) {
        colorwsp=color6;
      } else if (thirdAdult.get("West St. Paul")<=125 && thirdAdult.get("West St. Paul")>100) {
        colorwsp=color5;
      } else if (thirdAdult.get("West St. Paul")<=100 && thirdAdult.get("West St. Paul")>75) {
        colorwsp=color4;
      } else if (thirdAdult.get("West St. Paul")<=75 && thirdAdult.get("West St. Paul")>50) {
        colorwsp=color3;
      } else if (thirdAdult.get("West St. Paul")<=50 && thirdAdult.get("West St. Paul")>25) {
        colorwsp=color2;
      } else if (thirdAdult.get("West St. Paul")<=25 && thirdAdult.get("West St. Paul")>0) {
        colorwsp=color1;
      }


      if (thirdAdult.get("South St. Paul")>325) {
        colorbv=color14;
      } else if (thirdAdult.get("South St. Paul")<=325 && thirdAdult.get("South St. Paul")>300) {
        colorbv=color13;
      } else if (thirdAdult.get("South St. Paul")<=300 && thirdAdult.get("South St. Paul")>275) {
        colorbv=color12;
      } else if (thirdAdult.get("South St. Paul")<=275 && thirdAdult.get("South St. Paul")>250) {
        colorbv=color11;
      } else if (thirdAdult.get("South St. Paul")<=250 && thirdAdult.get("South St. Paul")>225) {
        colorbv=color10;
      } else if (thirdAdult.get("South St. Paul")<=225 && thirdAdult.get("South St. Paul")>200) {
        colorbv=color9;
      } else if (thirdAdult.get("South St. Paul")<=200 && thirdAdult.get("South St. Paul")>175) {
        colorbv=color8;
      } else if (thirdAdult.get("South St. Paul")<=175 && thirdAdult.get("South St. Paul")>150) {
        colorbv=color7;
      } else if (thirdAdult.get("South St. Paul")<=150 && thirdAdult.get("South St. Paul")>125) {
        colorbv=color6;
      } else if (thirdAdult.get("South St. Paul")<=125 && thirdAdult.get("South St. Paul")>100) {
        colorbv=color5;
      } else if (thirdAdult.get("South St. Paul")<=100 && thirdAdult.get("South St. Paul")>75) {
        colorbv=color4;
      } else if (thirdAdult.get("South St. Paul")<=75 && thirdAdult.get("South St. Paul")>50) {
        colorbv=color3;
      } else if (thirdAdult.get("South St. Paul")<=50 && thirdAdult.get("South St. Paul")>25) {
        colorbv=color2;
      } else if (thirdAdult.get("South St. Paul")<=25 && thirdAdult.get("South St. Paul")>0) {
        colorbv=color1;
      }


      if (thirdAdult.get("Lakeville")>325) {
        colorlk=color14;
      } else if (thirdAdult.get("Lakeville")<=325 && thirdAdult.get("Lakeville")>300) {
        colorlk=color13;
      } else if (thirdAdult.get("Lakeville")<=300 && thirdAdult.get("Lakeville")>275) {
        colorlk=color12;
      } else if (thirdAdult.get("Lakeville")<=275 && thirdAdult.get("Lakeville")>250) {
        colorlk=color11;
      } else if (thirdAdult.get("Lakeville")<=250 && thirdAdult.get("Lakeville")>225) {
        colorlk=color10;
      } else if (thirdAdult.get("Lakeville")<=225 && thirdAdult.get("Lakeville")>200) {
        colorlk=color9;
      } else if (thirdAdult.get("Lakeville")<=200 && thirdAdult.get("Lakeville")>175) {
        colorlk=color8;
      } else if (thirdAdult.get("Lakeville")<=175 && thirdAdult.get("Lakeville")>150) {
        colorlk=color7;
      } else if (thirdAdult.get("Lakeville")<=150 && thirdAdult.get("Lakeville")>125) {
        colorlk=color6;
      } else if (thirdAdult.get("Lakeville")<=125 && thirdAdult.get("Lakeville")>100) {
        colorlk=color5;
      } else if (thirdAdult.get("Lakeville")<=100 && thirdAdult.get("Lakeville")>75) {
        colorlk=color4;
      } else if (thirdAdult.get("Lakeville")<=75 && thirdAdult.get("Lakeville")>50) {
        colorlk=color3;
      } else if (thirdAdult.get("Lakeville")<=50 && thirdAdult.get("Lakeville")>25) {
        colorlk=color2;
      } else if (thirdAdult.get("Lakeville")<=25 && thirdAdult.get("Lakeville")>0) {
        colorlk=color1;
      }


      if (thirdAdult.get("TheRest")>325) {
        colortr=color14;
      } else if (thirdAdult.get("TheRest")<=325 && thirdAdult.get("TheRest")>300) {
        colortr=color13;
      } else if (thirdAdult.get("TheRest")<=300 && thirdAdult.get("TheRest")>275) {
        colortr=color12;
      } else if (thirdAdult.get("TheRest")<=275 && thirdAdult.get("TheRest")>250) {
        colortr=color11;
      } else if (thirdAdult.get("TheRest")<=250 && thirdAdult.get("TheRest")>225) {
        colortr=color10;
      } else if (thirdAdult.get("TheRest")<=225 && thirdAdult.get("TheRest")>200) {
        colortr=color9;
      } else if (thirdAdult.get("TheRest")<=200 && thirdAdult.get("TheRest")>175) {
        colortr=color8;
      } else if (thirdAdult.get("TheRest")<=175 && thirdAdult.get("TheRest")>150) {
        colortr=color7;
      } else if (thirdAdult.get("TheRest")<=150 && thirdAdult.get("TheRest")>125) {
        colortr=color6;
      } else if (thirdAdult.get("TheRest")<=125 && thirdAdult.get("TheRest")>100) {
        colortr=color5;
      } else if (thirdAdult.get("TheRest")<=100 && thirdAdult.get("TheRest")>75) {
        colortr=color4;
      } else if (thirdAdult.get("TheRest")<=75 && thirdAdult.get("TheRest")>50) {
        colortr=color3;
      } else if (thirdAdult.get("TheRest")<=50 && thirdAdult.get("TheRest")>25) {
        colortr=color2;
      } else if (thirdAdult.get("TheRest")<=25 && thirdAdult.get("TheRest")>0) {
        colortr=color1;
      }
    } else if (age.equals("Juvenile")) {
      thirdJuvenile= prog.theMap(year, age);
      if (thirdJuvenile.get("Rosemount")>325) {
        colorrsmt=color14;
      } else if (thirdJuvenile.get("Rosemount")<=325 && thirdJuvenile.get("Rosemount")>300) {
        colorrsmt=color13;
      } else if (thirdJuvenile.get("Rosemount")<=300 && thirdJuvenile.get("Rosemount")>275) {
        colorrsmt=color12;
      } else if (thirdJuvenile.get("Rosemount")<=275 && thirdJuvenile.get("Rosemount")>250) {
        colorrsmt=color11;
      } else if (thirdJuvenile.get("Rosemount")<=250 && thirdJuvenile.get("Rosemount")>225) {
        colorrsmt=color10;
      } else if (thirdJuvenile.get("Rosemount")<=225 && thirdJuvenile.get("Rosemount")>200) {
        colorrsmt=color9;
      } else if (thirdJuvenile.get("Rosemount")<=200 && thirdJuvenile.get("Rosemount")>175) {
        colorrsmt=color8;
      } else if (thirdJuvenile.get("Rosemount")<=175 && thirdJuvenile.get("Rosemount")>150) {
        colorrsmt=color7;
      } else if (thirdJuvenile.get("Rosemount")<=150 && thirdJuvenile.get("Rosemount")>125) {
        colorrsmt=color6;
      } else if (thirdJuvenile.get("Rosemount")<=125 && thirdJuvenile.get("Rosemount")>100) {
        colorrsmt=color5;
      } else if (thirdJuvenile.get("Rosemount")<=100 && thirdJuvenile.get("Rosemount")>75) {
        colorrsmt=color4;
      } else if (thirdJuvenile.get("Rosemount")<=75 && thirdJuvenile.get("Rosemount")>50) {
        colorrsmt=color3;
      } else if (thirdJuvenile.get("Rosemount")<=50 && thirdJuvenile.get("Rosemount")>25) {
        colorrsmt=color2;
      } else if (thirdJuvenile.get("Rosemount")<=25 && thirdJuvenile.get("Rosemount")>0) {
        colorrsmt=color1;
      }


      if (thirdJuvenile.get("Apple Valley")>325) {
        colorav=color14;
      } else if (thirdJuvenile.get("Apple Valley")<=325 && thirdJuvenile.get("Apple Valley")>300) {
        colorav=color13;
      } else if (thirdJuvenile.get("Apple Valley")<=300 && thirdJuvenile.get("Apple Valley")>275) {
        colorav=color12;
      } else if (thirdJuvenile.get("Apple Valley")<=275 && thirdJuvenile.get("Apple Valley")>250) {
        colorav=color11;
      } else if (thirdJuvenile.get("Apple Valley")<=250 && thirdJuvenile.get("Apple Valley")>225) {
        colorav=color10;
      } else if (thirdJuvenile.get("Apple Valley")<=225 && thirdJuvenile.get("Apple Valley")>200) {
        colorav=color9;
      } else if (thirdJuvenile.get("Apple Valley")<=200 && thirdJuvenile.get("Apple Valley")>175) {
        colorav=color8;
      } else if (thirdJuvenile.get("Apple Valley")<=175 && thirdJuvenile.get("Apple Valley")>150) {
        colorav=color7;
      } else if (thirdJuvenile.get("Apple Valley")<=150 && thirdJuvenile.get("Apple Valley")>125) {
        colorav=color6;
      } else if (thirdJuvenile.get("Apple Valley")<=125 && thirdJuvenile.get("Apple Valley")>100) {
        colorav=color5;
      } else if (thirdJuvenile.get("Apple Valley")<=100 && thirdJuvenile.get("Apple Valley")>75) {
        colorav=color4;
      } else if (thirdJuvenile.get("Apple Valley")<=75 && thirdJuvenile.get("Apple Valley")>50) {
        colorav=color3;
      } else if (thirdJuvenile.get("Apple Valley")<=50 && thirdJuvenile.get("Apple Valley")>25) {
        colorav=color2;
      } else if (thirdJuvenile.get("Apple Valley")<=25 && thirdJuvenile.get("Apple Valley")>0) {
        colorav=color1;
      }


      if (thirdJuvenile.get("Eagan")>325) {
        coloreg=color14;
      } else if (thirdJuvenile.get("Eagan")<=325 && thirdJuvenile.get("Eagan")>300) {
        coloreg=color13;
      } else if (thirdJuvenile.get("Eagan")<=300 && thirdJuvenile.get("Eagan")>275) {
        coloreg=color12;
      } else if (thirdJuvenile.get("Eagan")<=275 && thirdJuvenile.get("Eagan")>250) {
        coloreg=color11;
      } else if (thirdJuvenile.get("Eagan")<=250 && thirdJuvenile.get("Eagan")>225) {
        coloreg=color10;
      } else if (thirdJuvenile.get("Eagan")<=225 && thirdJuvenile.get("Eagan")>200) {
        coloreg=color9;
      } else if (thirdJuvenile.get("Eagan")<=200 && thirdJuvenile.get("Eagan")>175) {
        coloreg=color8;
      } else if (thirdJuvenile.get("Eagan")<=175 && thirdJuvenile.get("Eagan")>150) {
        coloreg=color7;
      } else if (thirdJuvenile.get("Eagan")<=150 && thirdJuvenile.get("Eagan")>125) {
        coloreg=color6;
      } else if (thirdJuvenile.get("Eagan")<=125 && thirdJuvenile.get("Eagan")>100) {
        coloreg=color5;
      } else if (thirdJuvenile.get("Eagan")<=100 && thirdJuvenile.get("Eagan")>75) {
        coloreg=color4;
      } else if (thirdJuvenile.get("Eagan")<=75 && thirdJuvenile.get("Eagan")>50) {
        coloreg=color3;
      } else if (thirdJuvenile.get("Eagan")<=50 && thirdJuvenile.get("Eagan")>25) {
        coloreg=color2;
      } else if (thirdJuvenile.get("Eagan")<=25 && thirdJuvenile.get("Eagan")>0) {
        coloreg=color1;
      }


      if (thirdJuvenile.get("West St. Paul")>325) {
        colorwsp=color14;
      } else if (thirdJuvenile.get("West St. Paul")<=325 && thirdJuvenile.get("West St. Paul")>300) {
        colorwsp=color13;
      } else if (thirdJuvenile.get("West St. Paul")<=300 && thirdJuvenile.get("West St. Paul")>275) {
        colorwsp=color12;
      } else if (thirdJuvenile.get("West St. Paul")<=275 && thirdJuvenile.get("West St. Paul")>250) {
        colorwsp=color11;
      } else if (thirdJuvenile.get("West St. Paul")<=250 && thirdJuvenile.get("West St. Paul")>225) {
        colorwsp=color10;
      } else if (thirdJuvenile.get("West St. Paul")<=225 && thirdJuvenile.get("West St. Paul")>200) {
        colorwsp=color9;
      } else if (thirdJuvenile.get("West St. Paul")<=200 && thirdJuvenile.get("West St. Paul")>175) {
        colorwsp=color8;
      } else if (thirdJuvenile.get("West St. Paul")<=175 && thirdJuvenile.get("West St. Paul")>150) {
        colorwsp=color7;
      } else if (thirdJuvenile.get("West St. Paul")<=150 && thirdJuvenile.get("West St. Paul")>125) {
        colorwsp=color6;
      } else if (thirdJuvenile.get("West St. Paul")<=125 && thirdJuvenile.get("West St. Paul")>100) {
        colorwsp=color5;
      } else if (thirdJuvenile.get("West St. Paul")<=100 && thirdJuvenile.get("West St. Paul")>75) {
        colorwsp=color4;
      } else if (thirdJuvenile.get("West St. Paul")<=75 && thirdJuvenile.get("West St. Paul")>50) {
        colorwsp=color3;
      } else if (thirdJuvenile.get("West St. Paul")<=50 && thirdJuvenile.get("West St. Paul")>25) {
        colorwsp=color2;
      } else if (thirdJuvenile.get("West St. Paul")<=25 && thirdJuvenile.get("West St. Paul")>0) {
        colorwsp=color1;
      }


      if (thirdJuvenile.get("South St. Paul")>325) {
        colorbv=color14;
      } else if (thirdJuvenile.get("South St. Paul")<=325 && thirdJuvenile.get("South St. Paul")>300) {
        colorbv=color13;
      } else if (thirdJuvenile.get("South St. Paul")<=300 && thirdJuvenile.get("South St. Paul")>275) {
        colorbv=color12;
      } else if (thirdJuvenile.get("South St. Paul")<=275 && thirdJuvenile.get("South St. Paul")>250) {
        colorbv=color11;
      } else if (thirdJuvenile.get("South St. Paul")<=250 && thirdJuvenile.get("South St. Paul")>225) {
        colorbv=color10;
      } else if (thirdJuvenile.get("South St. Paul")<=225 && thirdJuvenile.get("South St. Paul")>200) {
        colorbv=color9;
      } else if (thirdJuvenile.get("South St. Paul")<=200 && thirdJuvenile.get("South St. Paul")>175) {
        colorbv=color8;
      } else if (thirdJuvenile.get("South St. Paul")<=175 && thirdJuvenile.get("South St. Paul")>150) {
        colorbv=color7;
      } else if (thirdJuvenile.get("South St. Paul")<=150 && thirdJuvenile.get("South St. Paul")>125) {
        colorbv=color6;
      } else if (thirdJuvenile.get("South St. Paul")<=125 && thirdJuvenile.get("South St. Paul")>100) {
        colorbv=color5;
      } else if (thirdJuvenile.get("South St. Paul")<=100 && thirdJuvenile.get("South St. Paul")>75) {
        colorbv=color4;
      } else if (thirdJuvenile.get("South St. Paul")<=75 && thirdJuvenile.get("South St. Paul")>50) {
        colorbv=color3;
      } else if (thirdJuvenile.get("South St. Paul")<=50 && thirdJuvenile.get("South St. Paul")>25) {
        colorbv=color2;
      } else if (thirdJuvenile.get("South St. Paul")<=25 && thirdJuvenile.get("South St. Paul")>0) {
        colorbv=color1;
      }


      if (thirdJuvenile.get("Lakeville")>325) {
        colorlk=color14;
      } else if (thirdJuvenile.get("Lakeville")<=325 && thirdJuvenile.get("Lakeville")>300) {
        colorlk=color13;
      } else if (thirdJuvenile.get("Lakeville")<=300 && thirdJuvenile.get("Lakeville")>275) {
        colorlk=color12;
      } else if (thirdJuvenile.get("Lakeville")<=275 && thirdJuvenile.get("Lakeville")>250) {
        colorlk=color11;
      } else if (thirdJuvenile.get("Lakeville")<=250 && thirdJuvenile.get("Lakeville")>225) {
        colorlk=color10;
      } else if (thirdJuvenile.get("Lakeville")<=225 && thirdJuvenile.get("Lakeville")>200) {
        colorlk=color9;
      } else if (thirdJuvenile.get("Lakeville")<=200 && thirdJuvenile.get("Lakeville")>175) {
        colorlk=color8;
      } else if (thirdJuvenile.get("Lakeville")<=175 && thirdJuvenile.get("Lakeville")>150) {
        colorlk=color7;
      } else if (thirdJuvenile.get("Lakeville")<=150 && thirdJuvenile.get("Lakeville")>125) {
        colorlk=color6;
      } else if (thirdJuvenile.get("Lakeville")<=125 && thirdJuvenile.get("Lakeville")>100) {
        colorlk=color5;
      } else if (thirdJuvenile.get("Lakeville")<=100 && thirdJuvenile.get("Lakeville")>75) {
        colorlk=color4;
      } else if (thirdJuvenile.get("Lakeville")<=75 && thirdJuvenile.get("Lakeville")>50) {
        colorlk=color3;
      } else if (thirdJuvenile.get("Lakeville")<=50 && thirdJuvenile.get("Lakeville")>25) {
        colorlk=color2;
      } else if (thirdJuvenile.get("Lakeville")<=25 && thirdJuvenile.get("Lakeville")>0) {
        colorlk=color1;
      }


      if (thirdJuvenile.get("TheRest")>325) {
        colortr=color14;
      } else if (thirdJuvenile.get("TheRest")<=325 && thirdJuvenile.get("TheRest")>300) {
        colortr=color13;
      } else if (thirdJuvenile.get("TheRest")<=300 && thirdJuvenile.get("TheRest")>275) {
        colortr=color12;
      } else if (thirdJuvenile.get("TheRest")<=275 && thirdJuvenile.get("TheRest")>250) {
        colortr=color11;
      } else if (thirdJuvenile.get("TheRest")<=250 && thirdJuvenile.get("TheRest")>225) {
        colortr=color10;
      } else if (thirdJuvenile.get("TheRest")<=225 && thirdJuvenile.get("TheRest")>200) {
        colortr=color9;
      } else if (thirdJuvenile.get("TheRest")<=200 && thirdJuvenile.get("TheRest")>175) {
        colortr=color8;
      } else if (thirdJuvenile.get("TheRest")<=175 && thirdJuvenile.get("TheRest")>150) {
        colortr=color7;
      } else if (thirdJuvenile.get("TheRest")<=150 && thirdJuvenile.get("TheRest")>125) {
        colortr=color6;
      } else if (thirdJuvenile.get("TheRest")<=125 && thirdJuvenile.get("TheRest")>100) {
        colortr=color5;
      } else if (thirdJuvenile.get("TheRest")<=100 && thirdJuvenile.get("TheRest")>75) {
        colortr=color4;
      } else if (thirdJuvenile.get("TheRest")<=75 && thirdJuvenile.get("TheRest")>50) {
        colortr=color3;
      } else if (thirdJuvenile.get("TheRest")<=50 && thirdJuvenile.get("TheRest")>25) {
        colortr=color2;
      } else if (thirdJuvenile.get("TheRest")<=25 && thirdJuvenile.get("TheRest")>0) {
        colortr=color1;
      }
    }


    e = prog.theMap(year, age);
    //upDate();

    for (String p : e.keySet()) {
      output+=p+" - "+e.get(p)+"\n";
    }

    //println( output);
    println( output + year+ age+"\n");
  }
  if (circleFour) {
    output="";
    currentColor = circleColor;
    if (age.equals("Adult")) {
      fourthAdult= prog.theMap(year, age);
      if (fourthAdult.get("Rosemount")>325) {
        colorrsmt=color14;
      } else if (fourthAdult.get("Rosemount")<=325 && fourthAdult.get("Rosemount")>300) {
        colorrsmt=color13;
      } else if (fourthAdult.get("Rosemount")<=300 && fourthAdult.get("Rosemount")>275) {
        colorrsmt=color12;
      } else if (fourthAdult.get("Rosemount")<=275 && fourthAdult.get("Rosemount")>250) {
        colorrsmt=color11;
      } else if (fourthAdult.get("Rosemount")<=250 && fourthAdult.get("Rosemount")>225) {
        colorrsmt=color10;
      } else if (fourthAdult.get("Rosemount")<=225 && fourthAdult.get("Rosemount")>200) {
        colorrsmt=color9;
      } else if (fourthAdult.get("Rosemount")<=200 && fourthAdult.get("Rosemount")>175) {
        colorrsmt=color8;
      } else if (fourthAdult.get("Rosemount")<=175 && fourthAdult.get("Rosemount")>150) {
        colorrsmt=color7;
      } else if (fourthAdult.get("Rosemount")<=150 && fourthAdult.get("Rosemount")>125) {
        colorrsmt=color6;
      } else if (fourthAdult.get("Rosemount")<=125 && fourthAdult.get("Rosemount")>100) {
        colorrsmt=color5;
      } else if (fourthAdult.get("Rosemount")<=100 && fourthAdult.get("Rosemount")>75) {
        colorrsmt=color4;
      } else if (fourthAdult.get("Rosemount")<=75 && fourthAdult.get("Rosemount")>50) {
        colorrsmt=color3;
      } else if (fourthAdult.get("Rosemount")<=50 && fourthAdult.get("Rosemount")>25) {
        colorrsmt=color2;
      } else if (fourthAdult.get("Rosemount")<=25 && fourthAdult.get("Rosemount")>0) {
        colorrsmt=color1;
      }


      if (fourthAdult.get("Apple Valley")>325) {
        colorav=color14;
      } else if (fourthAdult.get("Apple Valley")<=325 && fourthAdult.get("Apple Valley")>300) {
        colorav=color13;
      } else if (fourthAdult.get("Apple Valley")<=300 && fourthAdult.get("Apple Valley")>275) {
        colorav=color12;
      } else if (fourthAdult.get("Apple Valley")<=275 && fourthAdult.get("Apple Valley")>250) {
        colorav=color11;
      } else if (fourthAdult.get("Apple Valley")<=250 && fourthAdult.get("Apple Valley")>225) {
        colorav=color10;
      } else if (fourthAdult.get("Apple Valley")<=225 && fourthAdult.get("Apple Valley")>200) {
        colorav=color9;
      } else if (fourthAdult.get("Apple Valley")<=200 && fourthAdult.get("Apple Valley")>175) {
        colorav=color8;
      } else if (fourthAdult.get("Apple Valley")<=175 && fourthAdult.get("Apple Valley")>150) {
        colorav=color7;
      } else if (fourthAdult.get("Apple Valley")<=150 && fourthAdult.get("Apple Valley")>125) {
        colorav=color6;
      } else if (fourthAdult.get("Apple Valley")<=125 && fourthAdult.get("Apple Valley")>100) {
        colorav=color5;
      } else if (fourthAdult.get("Apple Valley")<=100 && fourthAdult.get("Apple Valley")>75) {
        colorav=color4;
      } else if (fourthAdult.get("Apple Valley")<=75 && fourthAdult.get("Apple Valley")>50) {
        colorav=color3;
      } else if (fourthAdult.get("Apple Valley")<=50 && fourthAdult.get("Apple Valley")>25) {
        colorav=color2;
      } else if (fourthAdult.get("Apple Valley")<=25 && fourthAdult.get("Apple Valley")>0) {
        colorav=color1;
      }


      if (fourthAdult.get("Eagan")>325) {
        coloreg=color14;
      } else if (fourthAdult.get("Eagan")<=325 && fourthAdult.get("Eagan")>300) {
        coloreg=color13;
      } else if (fourthAdult.get("Eagan")<=300 && fourthAdult.get("Eagan")>275) {
        coloreg=color12;
      } else if (fourthAdult.get("Eagan")<=275 && fourthAdult.get("Eagan")>250) {
        coloreg=color11;
      } else if (fourthAdult.get("Eagan")<=250 && fourthAdult.get("Eagan")>225) {
        coloreg=color10;
      } else if (fourthAdult.get("Eagan")<=225 && fourthAdult.get("Eagan")>200) {
        coloreg=color9;
      } else if (fourthAdult.get("Eagan")<=200 && fourthAdult.get("Eagan")>175) {
        coloreg=color8;
      } else if (fourthAdult.get("Eagan")<=175 && fourthAdult.get("Eagan")>150) {
        coloreg=color7;
      } else if (fourthAdult.get("Eagan")<=150 && fourthAdult.get("Eagan")>125) {
        coloreg=color6;
      } else if (fourthAdult.get("Eagan")<=125 && fourthAdult.get("Eagan")>100) {
        coloreg=color5;
      } else if (fourthAdult.get("Eagan")<=100 && fourthAdult.get("Eagan")>75) {
        coloreg=color4;
      } else if (fourthAdult.get("Eagan")<=75 && fourthAdult.get("Eagan")>50) {
        coloreg=color3;
      } else if (fourthAdult.get("Eagan")<=50 && fourthAdult.get("Eagan")>25) {
        coloreg=color2;
      } else if (fourthAdult.get("Eagan")<=25 && fourthAdult.get("Eagan")>0) {
        coloreg=color1;
      }


      if (fourthAdult.get("West St. Paul")>325) {
        colorwsp=color14;
      } else if (fourthAdult.get("West St. Paul")<=325 && fourthAdult.get("West St. Paul")>300) {
        colorwsp=color13;
      } else if (fourthAdult.get("West St. Paul")<=300 && fourthAdult.get("West St. Paul")>275) {
        colorwsp=color12;
      } else if (fourthAdult.get("West St. Paul")<=275 && fourthAdult.get("West St. Paul")>250) {
        colorwsp=color11;
      } else if (fourthAdult.get("West St. Paul")<=250 && fourthAdult.get("West St. Paul")>225) {
        colorwsp=color10;
      } else if (fourthAdult.get("West St. Paul")<=225 && fourthAdult.get("West St. Paul")>200) {
        colorwsp=color9;
      } else if (fourthAdult.get("West St. Paul")<=200 && fourthAdult.get("West St. Paul")>175) {
        colorwsp=color8;
      } else if (fourthAdult.get("West St. Paul")<=175 && fourthAdult.get("West St. Paul")>150) {
        colorwsp=color7;
      } else if (fourthAdult.get("West St. Paul")<=150 && fourthAdult.get("West St. Paul")>125) {
        colorwsp=color6;
      } else if (fourthAdult.get("West St. Paul")<=125 && fourthAdult.get("West St. Paul")>100) {
        colorwsp=color5;
      } else if (fourthAdult.get("West St. Paul")<=100 && fourthAdult.get("West St. Paul")>75) {
        colorwsp=color4;
      } else if (fourthAdult.get("West St. Paul")<=75 && fourthAdult.get("West St. Paul")>50) {
        colorwsp=color3;
      } else if (fourthAdult.get("West St. Paul")<=50 && fourthAdult.get("West St. Paul")>25) {
        colorwsp=color2;
      } else if (fourthAdult.get("West St. Paul")<=25 && fourthAdult.get("West St. Paul")>0) {
        colorwsp=color1;
      }


      if (fourthAdult.get("South St. Paul")>325) {
        colorbv=color14;
      } else if (fourthAdult.get("South St. Paul")<=325 && fourthAdult.get("South St. Paul")>300) {
        colorbv=color13;
      } else if (fourthAdult.get("South St. Paul")<=300 && fourthAdult.get("South St. Paul")>275) {
        colorbv=color12;
      } else if (fourthAdult.get("South St. Paul")<=275 && fourthAdult.get("South St. Paul")>250) {
        colorbv=color11;
      } else if (fourthAdult.get("South St. Paul")<=250 && fourthAdult.get("South St. Paul")>225) {
        colorbv=color10;
      } else if (fourthAdult.get("South St. Paul")<=225 && fourthAdult.get("South St. Paul")>200) {
        colorbv=color9;
      } else if (fourthAdult.get("South St. Paul")<=200 && fourthAdult.get("South St. Paul")>175) {
        colorbv=color8;
      } else if (fourthAdult.get("South St. Paul")<=175 && fourthAdult.get("South St. Paul")>150) {
        colorbv=color7;
      } else if (fourthAdult.get("South St. Paul")<=150 && fourthAdult.get("South St. Paul")>125) {
        colorbv=color6;
      } else if (fourthAdult.get("South St. Paul")<=125 && fourthAdult.get("South St. Paul")>100) {
        colorbv=color5;
      } else if (fourthAdult.get("South St. Paul")<=100 && fourthAdult.get("South St. Paul")>75) {
        colorbv=color4;
      } else if (fourthAdult.get("South St. Paul")<=75 && fourthAdult.get("South St. Paul")>50) {
        colorbv=color3;
      } else if (fourthAdult.get("South St. Paul")<=50 && fourthAdult.get("South St. Paul")>25) {
        colorbv=color2;
      } else if (fourthAdult.get("South St. Paul")<=25 && fourthAdult.get("South St. Paul")>0) {
        colorbv=color1;
      }


      if (fourthAdult.get("Lakeville")>325) {
        colorlk=color14;
      } else if (fourthAdult.get("Lakeville")<=325 && fourthAdult.get("Lakeville")>300) {
        colorlk=color13;
      } else if (fourthAdult.get("Lakeville")<=300 && fourthAdult.get("Lakeville")>275) {
        colorlk=color12;
      } else if (fourthAdult.get("Lakeville")<=275 && fourthAdult.get("Lakeville")>250) {
        colorlk=color11;
      } else if (fourthAdult.get("Lakeville")<=250 && fourthAdult.get("Lakeville")>225) {
        colorlk=color10;
      } else if (fourthAdult.get("Lakeville")<=225 && fourthAdult.get("Lakeville")>200) {
        colorlk=color9;
      } else if (fourthAdult.get("Lakeville")<=200 && fourthAdult.get("Lakeville")>175) {
        colorlk=color8;
      } else if (fourthAdult.get("Lakeville")<=175 && fourthAdult.get("Lakeville")>150) {
        colorlk=color7;
      } else if (fourthAdult.get("Lakeville")<=150 && fourthAdult.get("Lakeville")>125) {
        colorlk=color6;
      } else if (fourthAdult.get("Lakeville")<=125 && fourthAdult.get("Lakeville")>100) {
        colorlk=color5;
      } else if (fourthAdult.get("Lakeville")<=100 && fourthAdult.get("Lakeville")>75) {
        colorlk=color4;
      } else if (fourthAdult.get("Lakeville")<=75 && fourthAdult.get("Lakeville")>50) {
        colorlk=color3;
      } else if (fourthAdult.get("Lakeville")<=50 && fourthAdult.get("Lakeville")>25) {
        colorlk=color2;
      } else if (fourthAdult.get("Lakeville")<=25 && fourthAdult.get("Lakeville")>0) {
        colorlk=color1;
      }


      if (fourthAdult.get("TheRest")>325) {
        colortr=color14;
      } else if (fourthAdult.get("TheRest")<=325 && fourthAdult.get("TheRest")>300) {
        colortr=color13;
      } else if (fourthAdult.get("TheRest")<=300 && fourthAdult.get("TheRest")>275) {
        colortr=color12;
      } else if (fourthAdult.get("TheRest")<=275 && fourthAdult.get("TheRest")>250) {
        colortr=color11;
      } else if (fourthAdult.get("TheRest")<=250 && fourthAdult.get("TheRest")>225) {
        colortr=color10;
      } else if (fourthAdult.get("TheRest")<=225 && fourthAdult.get("TheRest")>200) {
        colortr=color9;
      } else if (fourthAdult.get("TheRest")<=200 && fourthAdult.get("TheRest")>175) {
        colortr=color8;
      } else if (fourthAdult.get("TheRest")<=175 && fourthAdult.get("TheRest")>150) {
        colortr=color7;
      } else if (fourthAdult.get("TheRest")<=150 && fourthAdult.get("TheRest")>125) {
        colortr=color6;
      } else if (fourthAdult.get("TheRest")<=125 && fourthAdult.get("TheRest")>100) {
        colortr=color5;
      } else if (fourthAdult.get("TheRest")<=100 && fourthAdult.get("TheRest")>75) {
        colortr=color4;
      } else if (fourthAdult.get("TheRest")<=75 && fourthAdult.get("TheRest")>50) {
        colortr=color3;
      } else if (fourthAdult.get("TheRest")<=50 && fourthAdult.get("TheRest")>25) {
        colortr=color2;
      } else if (fourthAdult.get("TheRest")<=25 && fourthAdult.get("TheRest")>0) {
        colortr=color1;
      }
    } else if (age.equals("Juvenile")) {
      fourthJuvenile= prog.theMap(year, age);
      if (fourthJuvenile.get("Rosemount")>325) {
        colorrsmt=color14;
      } else if (fourthJuvenile.get("Rosemount")<=325 && fourthJuvenile.get("Rosemount")>300) {
        colorrsmt=color13;
      } else if (fourthJuvenile.get("Rosemount")<=300 && fourthJuvenile.get("Rosemount")>275) {
        colorrsmt=color12;
      } else if (fourthJuvenile.get("Rosemount")<=275 && fourthJuvenile.get("Rosemount")>250) {
        colorrsmt=color11;
      } else if (fourthJuvenile.get("Rosemount")<=250 && fourthJuvenile.get("Rosemount")>225) {
        colorrsmt=color10;
      } else if (fourthJuvenile.get("Rosemount")<=225 && fourthJuvenile.get("Rosemount")>200) {
        colorrsmt=color9;
      } else if (fourthJuvenile.get("Rosemount")<=200 && fourthJuvenile.get("Rosemount")>175) {
        colorrsmt=color8;
      } else if (fourthJuvenile.get("Rosemount")<=175 && fourthJuvenile.get("Rosemount")>150) {
        colorrsmt=color7;
      } else if (fourthJuvenile.get("Rosemount")<=150 && fourthJuvenile.get("Rosemount")>125) {
        colorrsmt=color6;
      } else if (fourthJuvenile.get("Rosemount")<=125 && fourthJuvenile.get("Rosemount")>100) {
        colorrsmt=color5;
      } else if (fourthJuvenile.get("Rosemount")<=100 && fourthJuvenile.get("Rosemount")>75) {
        colorrsmt=color4;
      } else if (fourthJuvenile.get("Rosemount")<=75 && fourthJuvenile.get("Rosemount")>50) {
        colorrsmt=color3;
      } else if (fourthJuvenile.get("Rosemount")<=50 && fourthJuvenile.get("Rosemount")>25) {
        colorrsmt=color2;
      } else if (fourthJuvenile.get("Rosemount")<=25 && fourthJuvenile.get("Rosemount")>0) {
        colorrsmt=color1;
      }


      if (fourthJuvenile.get("Apple Valley")>325) {
        colorav=color14;
      } else if (fourthJuvenile.get("Apple Valley")<=325 && fourthJuvenile.get("Apple Valley")>300) {
        colorav=color13;
      } else if (fourthJuvenile.get("Apple Valley")<=300 && fourthJuvenile.get("Apple Valley")>275) {
        colorav=color12;
      } else if (fourthJuvenile.get("Apple Valley")<=275 && fourthJuvenile.get("Apple Valley")>250) {
        colorav=color11;
      } else if (fourthJuvenile.get("Apple Valley")<=250 && fourthJuvenile.get("Apple Valley")>225) {
        colorav=color10;
      } else if (fourthJuvenile.get("Apple Valley")<=225 && fourthJuvenile.get("Apple Valley")>200) {
        colorav=color9;
      } else if (fourthJuvenile.get("Apple Valley")<=200 && fourthJuvenile.get("Apple Valley")>175) {
        colorav=color8;
      } else if (fourthJuvenile.get("Apple Valley")<=175 && fourthJuvenile.get("Apple Valley")>150) {
        colorav=color7;
      } else if (fourthJuvenile.get("Apple Valley")<=150 && fourthJuvenile.get("Apple Valley")>125) {
        colorav=color6;
      } else if (fourthJuvenile.get("Apple Valley")<=125 && fourthJuvenile.get("Apple Valley")>100) {
        colorav=color5;
      } else if (fourthJuvenile.get("Apple Valley")<=100 && fourthJuvenile.get("Apple Valley")>75) {
        colorav=color4;
      } else if (fourthJuvenile.get("Apple Valley")<=75 && fourthJuvenile.get("Apple Valley")>50) {
        colorav=color3;
      } else if (fourthJuvenile.get("Apple Valley")<=50 && fourthJuvenile.get("Apple Valley")>25) {
        colorav=color2;
      } else if (fourthJuvenile.get("Apple Valley")<=25 && fourthJuvenile.get("Apple Valley")>0) {
        colorav=color1;
      }


      if (fourthJuvenile.get("Eagan")>325) {
        coloreg=color14;
      } else if (fourthJuvenile.get("Eagan")<=325 && fourthJuvenile.get("Eagan")>300) {
        coloreg=color13;
      } else if (fourthJuvenile.get("Eagan")<=300 && fourthJuvenile.get("Eagan")>275) {
        coloreg=color12;
      } else if (fourthJuvenile.get("Eagan")<=275 && fourthJuvenile.get("Eagan")>250) {
        coloreg=color11;
      } else if (fourthJuvenile.get("Eagan")<=250 && fourthJuvenile.get("Eagan")>225) {
        coloreg=color10;
      } else if (fourthJuvenile.get("Eagan")<=225 && fourthJuvenile.get("Eagan")>200) {
        coloreg=color9;
      } else if (fourthJuvenile.get("Eagan")<=200 && fourthJuvenile.get("Eagan")>175) {
        coloreg=color8;
      } else if (fourthJuvenile.get("Eagan")<=175 && fourthJuvenile.get("Eagan")>150) {
        coloreg=color7;
      } else if (fourthJuvenile.get("Eagan")<=150 && fourthJuvenile.get("Eagan")>125) {
        coloreg=color6;
      } else if (fourthJuvenile.get("Eagan")<=125 && fourthJuvenile.get("Eagan")>100) {
        coloreg=color5;
      } else if (fourthJuvenile.get("Eagan")<=100 && fourthJuvenile.get("Eagan")>75) {
        coloreg=color4;
      } else if (fourthJuvenile.get("Eagan")<=75 && fourthJuvenile.get("Eagan")>50) {
        coloreg=color3;
      } else if (fourthJuvenile.get("Eagan")<=50 && fourthJuvenile.get("Eagan")>25) {
        coloreg=color2;
      } else if (fourthJuvenile.get("Eagan")<=25 && fourthJuvenile.get("Eagan")>0) {
        coloreg=color1;
      }


      if (fourthJuvenile.get("West St. Paul")>325) {
        colorwsp=color14;
      } else if (fourthJuvenile.get("West St. Paul")<=325 && fourthJuvenile.get("West St. Paul")>300) {
        colorwsp=color13;
      } else if (fourthJuvenile.get("West St. Paul")<=300 && fourthJuvenile.get("West St. Paul")>275) {
        colorwsp=color12;
      } else if (fourthJuvenile.get("West St. Paul")<=275 && fourthJuvenile.get("West St. Paul")>250) {
        colorwsp=color11;
      } else if (fourthJuvenile.get("West St. Paul")<=250 && fourthJuvenile.get("West St. Paul")>225) {
        colorwsp=color10;
      } else if (fourthJuvenile.get("West St. Paul")<=225 && fourthJuvenile.get("West St. Paul")>200) {
        colorwsp=color9;
      } else if (fourthJuvenile.get("West St. Paul")<=200 && fourthJuvenile.get("West St. Paul")>175) {
        colorwsp=color8;
      } else if (fourthJuvenile.get("West St. Paul")<=175 && fourthJuvenile.get("West St. Paul")>150) {
        colorwsp=color7;
      } else if (fourthJuvenile.get("West St. Paul")<=150 && fourthJuvenile.get("West St. Paul")>125) {
        colorwsp=color6;
      } else if (fourthJuvenile.get("West St. Paul")<=125 && fourthJuvenile.get("West St. Paul")>100) {
        colorwsp=color5;
      } else if (fourthJuvenile.get("West St. Paul")<=100 && fourthJuvenile.get("West St. Paul")>75) {
        colorwsp=color4;
      } else if (fourthJuvenile.get("West St. Paul")<=75 && fourthJuvenile.get("West St. Paul")>50) {
        colorwsp=color3;
      } else if (fourthJuvenile.get("West St. Paul")<=50 && fourthJuvenile.get("West St. Paul")>25) {
        colorwsp=color2;
      } else if (fourthJuvenile.get("West St. Paul")<=25 && fourthJuvenile.get("West St. Paul")>0) {
        colorwsp=color1;
      }


      if (fourthJuvenile.get("South St. Paul")>325) {
        colorbv=color14;
      } else if (fourthJuvenile.get("South St. Paul")<=325 && fourthJuvenile.get("South St. Paul")>300) {
        colorbv=color13;
      } else if (fourthJuvenile.get("South St. Paul")<=300 && fourthJuvenile.get("South St. Paul")>275) {
        colorbv=color12;
      } else if (fourthJuvenile.get("South St. Paul")<=275 && fourthJuvenile.get("South St. Paul")>250) {
        colorbv=color11;
      } else if (fourthJuvenile.get("South St. Paul")<=250 && fourthJuvenile.get("South St. Paul")>225) {
        colorbv=color10;
      } else if (fourthJuvenile.get("South St. Paul")<=225 && fourthJuvenile.get("South St. Paul")>200) {
        colorbv=color9;
      } else if (fourthJuvenile.get("South St. Paul")<=200 && fourthJuvenile.get("South St. Paul")>175) {
        colorbv=color8;
      } else if (fourthJuvenile.get("South St. Paul")<=175 && fourthJuvenile.get("South St. Paul")>150) {
        colorbv=color7;
      } else if (fourthJuvenile.get("South St. Paul")<=150 && fourthJuvenile.get("South St. Paul")>125) {
        colorbv=color6;
      } else if (fourthJuvenile.get("South St. Paul")<=125 && fourthJuvenile.get("South St. Paul")>100) {
        colorbv=color5;
      } else if (fourthJuvenile.get("South St. Paul")<=100 && fourthJuvenile.get("South St. Paul")>75) {
        colorbv=color4;
      } else if (fourthJuvenile.get("South St. Paul")<=75 && fourthJuvenile.get("South St. Paul")>50) {
        colorbv=color3;
      } else if (fourthJuvenile.get("South St. Paul")<=50 && fourthJuvenile.get("South St. Paul")>25) {
        colorbv=color2;
      } else if (fourthJuvenile.get("South St. Paul")<=25 && fourthJuvenile.get("South St. Paul")>0) {
        colorbv=color1;
      }


      if (fourthJuvenile.get("Lakeville")>325) {
        colorlk=color14;
      } else if (fourthJuvenile.get("Lakeville")<=325 && fourthJuvenile.get("Lakeville")>300) {
        colorlk=color13;
      } else if (fourthJuvenile.get("Lakeville")<=300 && fourthJuvenile.get("Lakeville")>275) {
        colorlk=color12;
      } else if (fourthJuvenile.get("Lakeville")<=275 && fourthJuvenile.get("Lakeville")>250) {
        colorlk=color11;
      } else if (fourthJuvenile.get("Lakeville")<=250 && fourthJuvenile.get("Lakeville")>225) {
        colorlk=color10;
      } else if (fourthJuvenile.get("Lakeville")<=225 && fourthJuvenile.get("Lakeville")>200) {
        colorlk=color9;
      } else if (fourthJuvenile.get("Lakeville")<=200 && fourthJuvenile.get("Lakeville")>175) {
        colorlk=color8;
      } else if (fourthJuvenile.get("Lakeville")<=175 && fourthJuvenile.get("Lakeville")>150) {
        colorlk=color7;
      } else if (fourthJuvenile.get("Lakeville")<=150 && fourthJuvenile.get("Lakeville")>125) {
        colorlk=color6;
      } else if (fourthJuvenile.get("Lakeville")<=125 && fourthJuvenile.get("Lakeville")>100) {
        colorlk=color5;
      } else if (fourthJuvenile.get("Lakeville")<=100 && fourthJuvenile.get("Lakeville")>75) {
        colorlk=color4;
      } else if (fourthJuvenile.get("Lakeville")<=75 && fourthJuvenile.get("Lakeville")>50) {
        colorlk=color3;
      } else if (fourthJuvenile.get("Lakeville")<=50 && fourthJuvenile.get("Lakeville")>25) {
        colorlk=color2;
      } else if (fourthJuvenile.get("Lakeville")<=25 && fourthJuvenile.get("Lakeville")>0) {
        colorlk=color1;
      }


      if (fourthJuvenile.get("TheRest")>325) {
        colortr=color14;
      } else if (fourthJuvenile.get("TheRest")<=325 && fourthJuvenile.get("TheRest")>300) {
        colortr=color13;
      } else if (fourthJuvenile.get("TheRest")<=300 && fourthJuvenile.get("TheRest")>275) {
        colortr=color12;
      } else if (fourthJuvenile.get("TheRest")<=275 && fourthJuvenile.get("TheRest")>250) {
        colortr=color11;
      } else if (fourthJuvenile.get("TheRest")<=250 && fourthJuvenile.get("TheRest")>225) {
        colortr=color10;
      } else if (fourthJuvenile.get("TheRest")<=225 && fourthJuvenile.get("TheRest")>200) {
        colortr=color9;
      } else if (fourthJuvenile.get("TheRest")<=200 && fourthJuvenile.get("TheRest")>175) {
        colortr=color8;
      } else if (fourthJuvenile.get("TheRest")<=175 && fourthJuvenile.get("TheRest")>150) {
        colortr=color7;
      } else if (fourthJuvenile.get("TheRest")<=150 && fourthJuvenile.get("TheRest")>125) {
        colortr=color6;
      } else if (fourthJuvenile.get("TheRest")<=125 && fourthJuvenile.get("TheRest")>100) {
        colortr=color5;
      } else if (fourthJuvenile.get("TheRest")<=100 && fourthJuvenile.get("TheRest")>75) {
        colortr=color4;
      } else if (fourthJuvenile.get("TheRest")<=75 && fourthJuvenile.get("TheRest")>50) {
        colortr=color3;
      } else if (fourthJuvenile.get("TheRest")<=50 && fourthJuvenile.get("TheRest")>25) {
        colortr=color2;
      } else if (fourthJuvenile.get("TheRest")<=25 && fourthJuvenile.get("TheRest")>0) {
        colortr=color1;
      }
    }


    e = prog.theMap(year, age);
    //upDate();
    for (String p : e.keySet()) {
      output+=p+" - "+e.get(p)+"\n";
    }
    //println( output);
    println( output + year+ age+"\n");
  }
  if (circleFive) {
    output="";
    currentColor = circleColor;
    if (age.equals("Adult")) {
      fifthAdult= prog.theMap(year, age);
      if (fifthAdult.get("Rosemount")>325) {
        colorrsmt=color14;
      } else if (fifthAdult.get("Rosemount")<=325 && fifthAdult.get("Rosemount")>300) {
        colorrsmt=color13;
      } else if (fifthAdult.get("Rosemount")<=300 && fifthAdult.get("Rosemount")>275) {
        colorrsmt=color12;
      } else if (fifthAdult.get("Rosemount")<=275 && fifthAdult.get("Rosemount")>250) {
        colorrsmt=color11;
      } else if (fifthAdult.get("Rosemount")<=250 && fifthAdult.get("Rosemount")>225) {
        colorrsmt=color10;
      } else if (fifthAdult.get("Rosemount")<=225 && fifthAdult.get("Rosemount")>200) {
        colorrsmt=color9;
      } else if (fifthAdult.get("Rosemount")<=200 && fifthAdult.get("Rosemount")>175) {
        colorrsmt=color8;
      } else if (fifthAdult.get("Rosemount")<=175 && fifthAdult.get("Rosemount")>150) {
        colorrsmt=color7;
      } else if (fifthAdult.get("Rosemount")<=150 && fifthAdult.get("Rosemount")>125) {
        colorrsmt=color6;
      } else if (fifthAdult.get("Rosemount")<=125 && fifthAdult.get("Rosemount")>100) {
        colorrsmt=color5;
      } else if (fifthAdult.get("Rosemount")<=100 && fifthAdult.get("Rosemount")>75) {
        colorrsmt=color4;
      } else if (fifthAdult.get("Rosemount")<=75 && fifthAdult.get("Rosemount")>50) {
        colorrsmt=color3;
      } else if (fifthAdult.get("Rosemount")<=50 && fifthAdult.get("Rosemount")>25) {
        colorrsmt=color2;
      } else if (fifthAdult.get("Rosemount")<=25 && fifthAdult.get("Rosemount")>0) {
        colorrsmt=color1;
      }


      if (fifthAdult.get("Apple Valley")>325) {
        colorav=color14;
      } else if (fifthAdult.get("Apple Valley")<=325 && fifthAdult.get("Apple Valley")>300) {
        colorav=color13;
      } else if (fifthAdult.get("Apple Valley")<=300 && fifthAdult.get("Apple Valley")>275) {
        colorav=color12;
      } else if (fifthAdult.get("Apple Valley")<=275 && fifthAdult.get("Apple Valley")>250) {
        colorav=color11;
      } else if (fifthAdult.get("Apple Valley")<=250 && fifthAdult.get("Apple Valley")>225) {
        colorav=color10;
      } else if (fifthAdult.get("Apple Valley")<=225 && fifthAdult.get("Apple Valley")>200) {
        colorav=color9;
      } else if (fifthAdult.get("Apple Valley")<=200 && fifthAdult.get("Apple Valley")>175) {
        colorav=color8;
      } else if (fifthAdult.get("Apple Valley")<=175 && fifthAdult.get("Apple Valley")>150) {
        colorav=color7;
      } else if (fifthAdult.get("Apple Valley")<=150 && fifthAdult.get("Apple Valley")>125) {
        colorav=color6;
      } else if (fifthAdult.get("Apple Valley")<=125 && fifthAdult.get("Apple Valley")>100) {
        colorav=color5;
      } else if (fifthAdult.get("Apple Valley")<=100 && fifthAdult.get("Apple Valley")>75) {
        colorav=color4;
      } else if (fifthAdult.get("Apple Valley")<=75 && fifthAdult.get("Apple Valley")>50) {
        colorav=color3;
      } else if (fifthAdult.get("Apple Valley")<=50 && fifthAdult.get("Apple Valley")>25) {
        colorav=color2;
      } else if (fifthAdult.get("Apple Valley")<=25 && fifthAdult.get("Apple Valley")>0) {
        colorav=color1;
      }


      if (fifthAdult.get("Eagan")>325) {
        coloreg=color14;
      } else if (fifthAdult.get("Eagan")<=325 && fifthAdult.get("Eagan")>300) {
        coloreg=color13;
      } else if (fifthAdult.get("Eagan")<=300 && fifthAdult.get("Eagan")>275) {
        coloreg=color12;
      } else if (fifthAdult.get("Eagan")<=275 && fifthAdult.get("Eagan")>250) {
        coloreg=color11;
      } else if (fifthAdult.get("Eagan")<=250 && fifthAdult.get("Eagan")>225) {
        coloreg=color10;
      } else if (fifthAdult.get("Eagan")<=225 && fifthAdult.get("Eagan")>200) {
        coloreg=color9;
      } else if (fifthAdult.get("Eagan")<=200 && fifthAdult.get("Eagan")>175) {
        coloreg=color8;
      } else if (fifthAdult.get("Eagan")<=175 && fifthAdult.get("Eagan")>150) {
        coloreg=color7;
      } else if (fifthAdult.get("Eagan")<=150 && fifthAdult.get("Eagan")>125) {
        coloreg=color6;
      } else if (fifthAdult.get("Eagan")<=125 && fifthAdult.get("Eagan")>100) {
        coloreg=color5;
      } else if (fifthAdult.get("Eagan")<=100 && fifthAdult.get("Eagan")>75) {
        coloreg=color4;
      } else if (fifthAdult.get("Eagan")<=75 && fifthAdult.get("Eagan")>50) {
        coloreg=color3;
      } else if (fifthAdult.get("Eagan")<=50 && fifthAdult.get("Eagan")>25) {
        coloreg=color2;
      } else if (fifthAdult.get("Eagan")<=25 && fifthAdult.get("Eagan")>0) {
        coloreg=color1;
      }


      if (fifthAdult.get("West St. Paul")>325) {
        colorwsp=color14;
      } else if (fifthAdult.get("West St. Paul")<=325 && fifthAdult.get("West St. Paul")>300) {
        colorwsp=color13;
      } else if (fifthAdult.get("West St. Paul")<=300 && fifthAdult.get("West St. Paul")>275) {
        colorwsp=color12;
      } else if (fifthAdult.get("West St. Paul")<=275 && fifthAdult.get("West St. Paul")>250) {
        colorwsp=color11;
      } else if (fifthAdult.get("West St. Paul")<=250 && fifthAdult.get("West St. Paul")>225) {
        colorwsp=color10;
      } else if (fifthAdult.get("West St. Paul")<=225 && fifthAdult.get("West St. Paul")>200) {
        colorwsp=color9;
      } else if (fifthAdult.get("West St. Paul")<=200 && fifthAdult.get("West St. Paul")>175) {
        colorwsp=color8;
      } else if (fifthAdult.get("West St. Paul")<=175 && fifthAdult.get("West St. Paul")>150) {
        colorwsp=color7;
      } else if (fifthAdult.get("West St. Paul")<=150 && fifthAdult.get("West St. Paul")>125) {
        colorwsp=color6;
      } else if (fifthAdult.get("West St. Paul")<=125 && fifthAdult.get("West St. Paul")>100) {
        colorwsp=color5;
      } else if (fifthAdult.get("West St. Paul")<=100 && fifthAdult.get("West St. Paul")>75) {
        colorwsp=color4;
      } else if (fifthAdult.get("West St. Paul")<=75 && fifthAdult.get("West St. Paul")>50) {
        colorwsp=color3;
      } else if (fifthAdult.get("West St. Paul")<=50 && fifthAdult.get("West St. Paul")>25) {
        colorwsp=color2;
      } else if (fifthAdult.get("West St. Paul")<=25 && fifthAdult.get("West St. Paul")>0) {
        colorwsp=color1;
      }


      if (fifthAdult.get("South St. Paul")>325) {
        colorbv=color14;
      } else if (fifthAdult.get("South St. Paul")<=325 && fifthAdult.get("South St. Paul")>300) {
        colorbv=color13;
      } else if (fifthAdult.get("South St. Paul")<=300 && fifthAdult.get("South St. Paul")>275) {
        colorbv=color12;
      } else if (fifthAdult.get("South St. Paul")<=275 && fifthAdult.get("South St. Paul")>250) {
        colorbv=color11;
      } else if (fifthAdult.get("South St. Paul")<=250 && fifthAdult.get("South St. Paul")>225) {
        colorbv=color10;
      } else if (fifthAdult.get("South St. Paul")<=225 && fifthAdult.get("South St. Paul")>200) {
        colorbv=color9;
      } else if (fifthAdult.get("South St. Paul")<=200 && fifthAdult.get("South St. Paul")>175) {
        colorbv=color8;
      } else if (fifthAdult.get("South St. Paul")<=175 && fifthAdult.get("South St. Paul")>150) {
        colorbv=color7;
      } else if (fifthAdult.get("South St. Paul")<=150 && fifthAdult.get("South St. Paul")>125) {
        colorbv=color6;
      } else if (fifthAdult.get("South St. Paul")<=125 && fifthAdult.get("South St. Paul")>100) {
        colorbv=color5;
      } else if (fifthAdult.get("South St. Paul")<=100 && fifthAdult.get("South St. Paul")>75) {
        colorbv=color4;
      } else if (fifthAdult.get("South St. Paul")<=75 && fifthAdult.get("South St. Paul")>50) {
        colorbv=color3;
      } else if (fifthAdult.get("South St. Paul")<=50 && fifthAdult.get("South St. Paul")>25) {
        colorbv=color2;
      } else if (fifthAdult.get("South St. Paul")<=25 && fifthAdult.get("South St. Paul")>0) {
        colorbv=color1;
      }


      if (fifthAdult.get("Lakeville")>325) {
        colorlk=color14;
      } else if (fifthAdult.get("Lakeville")<=325 && fifthAdult.get("Lakeville")>300) {
        colorlk=color13;
      } else if (fifthAdult.get("Lakeville")<=300 && fifthAdult.get("Lakeville")>275) {
        colorlk=color12;
      } else if (fifthAdult.get("Lakeville")<=275 && fifthAdult.get("Lakeville")>250) {
        colorlk=color11;
      } else if (fifthAdult.get("Lakeville")<=250 && fifthAdult.get("Lakeville")>225) {
        colorlk=color10;
      } else if (fifthAdult.get("Lakeville")<=225 && fifthAdult.get("Lakeville")>200) {
        colorlk=color9;
      } else if (fifthAdult.get("Lakeville")<=200 && fifthAdult.get("Lakeville")>175) {
        colorlk=color8;
      } else if (fifthAdult.get("Lakeville")<=175 && fifthAdult.get("Lakeville")>150) {
        colorlk=color7;
      } else if (fifthAdult.get("Lakeville")<=150 && fifthAdult.get("Lakeville")>125) {
        colorlk=color6;
      } else if (fifthAdult.get("Lakeville")<=125 && fifthAdult.get("Lakeville")>100) {
        colorlk=color5;
      } else if (fifthAdult.get("Lakeville")<=100 && fifthAdult.get("Lakeville")>75) {
        colorlk=color4;
      } else if (fifthAdult.get("Lakeville")<=75 && fifthAdult.get("Lakeville")>50) {
        colorlk=color3;
      } else if (fifthAdult.get("Lakeville")<=50 && fifthAdult.get("Lakeville")>25) {
        colorlk=color2;
      } else if (fifthAdult.get("Lakeville")<=25 && fifthAdult.get("Lakeville")>0) {
        colorlk=color1;
      }


      if (fifthAdult.get("TheRest")>325) {
        colortr=color14;
      } else if (fifthAdult.get("TheRest")<=325 && fifthAdult.get("TheRest")>300) {
        colortr=color13;
      } else if (fifthAdult.get("TheRest")<=300 && fifthAdult.get("TheRest")>275) {
        colortr=color12;
      } else if (fifthAdult.get("TheRest")<=275 && fifthAdult.get("TheRest")>250) {
        colortr=color11;
      } else if (fifthAdult.get("TheRest")<=250 && fifthAdult.get("TheRest")>225) {
        colortr=color10;
      } else if (fifthAdult.get("TheRest")<=225 && fifthAdult.get("TheRest")>200) {
        colortr=color9;
      } else if (fifthAdult.get("TheRest")<=200 && fifthAdult.get("TheRest")>175) {
        colortr=color8;
      } else if (fifthAdult.get("TheRest")<=175 && fifthAdult.get("TheRest")>150) {
        colortr=color7;
      } else if (fifthAdult.get("TheRest")<=150 && fifthAdult.get("TheRest")>125) {
        colortr=color6;
      } else if (fifthAdult.get("TheRest")<=125 && fifthAdult.get("TheRest")>100) {
        colortr=color5;
      } else if (fifthAdult.get("TheRest")<=100 && fifthAdult.get("TheRest")>75) {
        colortr=color4;
      } else if (fifthAdult.get("TheRest")<=75 && fifthAdult.get("TheRest")>50) {
        colortr=color3;
      } else if (fifthAdult.get("TheRest")<=50 && fifthAdult.get("TheRest")>25) {
        colortr=color2;
      } else if (fifthAdult.get("TheRest")<=25 && fifthAdult.get("TheRest")>0) {
        colortr=color1;
      }
    } else if (age.equals("Juvenile")) {
      fifthJuvenile= prog.theMap(year, age);
      if (fifthJuvenile.get("Rosemount")>325) {
        colorrsmt=color14;
      } else if (fifthJuvenile.get("Rosemount")<=325 && fifthJuvenile.get("Rosemount")>300) {
        colorrsmt=color13;
      } else if (fifthJuvenile.get("Rosemount")<=300 && fifthJuvenile.get("Rosemount")>275) {
        colorrsmt=color12;
      } else if (fifthJuvenile.get("Rosemount")<=275 && fifthJuvenile.get("Rosemount")>250) {
        colorrsmt=color11;
      } else if (fifthJuvenile.get("Rosemount")<=250 && fifthJuvenile.get("Rosemount")>225) {
        colorrsmt=color10;
      } else if (fifthJuvenile.get("Rosemount")<=225 && fifthJuvenile.get("Rosemount")>200) {
        colorrsmt=color9;
      } else if (fifthJuvenile.get("Rosemount")<=200 && fifthJuvenile.get("Rosemount")>175) {
        colorrsmt=color8;
      } else if (fifthJuvenile.get("Rosemount")<=175 && fifthJuvenile.get("Rosemount")>150) {
        colorrsmt=color7;
      } else if (fifthJuvenile.get("Rosemount")<=150 && fifthJuvenile.get("Rosemount")>125) {
        colorrsmt=color6;
      } else if (fifthJuvenile.get("Rosemount")<=125 && fifthJuvenile.get("Rosemount")>100) {
        colorrsmt=color5;
      } else if (fifthJuvenile.get("Rosemount")<=100 && fifthJuvenile.get("Rosemount")>75) {
        colorrsmt=color4;
      } else if (fifthJuvenile.get("Rosemount")<=75 && fifthJuvenile.get("Rosemount")>50) {
        colorrsmt=color3;
      } else if (fifthJuvenile.get("Rosemount")<=50 && fifthJuvenile.get("Rosemount")>25) {
        colorrsmt=color2;
      } else if (fifthJuvenile.get("Rosemount")<=25 && fifthJuvenile.get("Rosemount")>0) {
        colorrsmt=color1;
      }


      if (fifthJuvenile.get("Apple Valley")>325) {
        colorav=color14;
      } else if (fifthJuvenile.get("Apple Valley")<=325 && fifthJuvenile.get("Apple Valley")>300) {
        colorav=color13;
      } else if (fifthJuvenile.get("Apple Valley")<=300 && fifthJuvenile.get("Apple Valley")>275) {
        colorav=color12;
      } else if (fifthJuvenile.get("Apple Valley")<=275 && fifthJuvenile.get("Apple Valley")>250) {
        colorav=color11;
      } else if (fifthJuvenile.get("Apple Valley")<=250 && fifthJuvenile.get("Apple Valley")>225) {
        colorav=color10;
      } else if (fifthJuvenile.get("Apple Valley")<=225 && fifthJuvenile.get("Apple Valley")>200) {
        colorav=color9;
      } else if (fifthJuvenile.get("Apple Valley")<=200 && fifthJuvenile.get("Apple Valley")>175) {
        colorav=color8;
      } else if (fifthJuvenile.get("Apple Valley")<=175 && fifthJuvenile.get("Apple Valley")>150) {
        colorav=color7;
      } else if (fifthJuvenile.get("Apple Valley")<=150 && fifthJuvenile.get("Apple Valley")>125) {
        colorav=color6;
      } else if (fifthJuvenile.get("Apple Valley")<=125 && fifthJuvenile.get("Apple Valley")>100) {
        colorav=color5;
      } else if (fifthJuvenile.get("Apple Valley")<=100 && fifthJuvenile.get("Apple Valley")>75) {
        colorav=color4;
      } else if (fifthJuvenile.get("Apple Valley")<=75 && fifthJuvenile.get("Apple Valley")>50) {
        colorav=color3;
      } else if (fifthJuvenile.get("Apple Valley")<=50 && fifthJuvenile.get("Apple Valley")>25) {
        colorav=color2;
      } else if (fifthJuvenile.get("Apple Valley")<=25 && fifthJuvenile.get("Apple Valley")>0) {
        colorav=color1;
      }


      if (fifthJuvenile.get("Eagan")>325) {
        coloreg=color14;
      } else if (fifthJuvenile.get("Eagan")<=325 && fifthJuvenile.get("Eagan")>300) {
        coloreg=color13;
      } else if (fifthJuvenile.get("Eagan")<=300 && fifthJuvenile.get("Eagan")>275) {
        coloreg=color12;
      } else if (fifthJuvenile.get("Eagan")<=275 && fifthJuvenile.get("Eagan")>250) {
        coloreg=color11;
      } else if (fifthJuvenile.get("Eagan")<=250 && fifthJuvenile.get("Eagan")>225) {
        coloreg=color10;
      } else if (fifthJuvenile.get("Eagan")<=225 && fifthJuvenile.get("Eagan")>200) {
        coloreg=color9;
      } else if (fifthJuvenile.get("Eagan")<=200 && fifthJuvenile.get("Eagan")>175) {
        coloreg=color8;
      } else if (fifthJuvenile.get("Eagan")<=175 && fifthJuvenile.get("Eagan")>150) {
        coloreg=color7;
      } else if (fifthJuvenile.get("Eagan")<=150 && fifthJuvenile.get("Eagan")>125) {
        coloreg=color6;
      } else if (fifthJuvenile.get("Eagan")<=125 && fifthJuvenile.get("Eagan")>100) {
        coloreg=color5;
      } else if (fifthJuvenile.get("Eagan")<=100 && fifthJuvenile.get("Eagan")>75) {
        coloreg=color4;
      } else if (fifthJuvenile.get("Eagan")<=75 && fifthJuvenile.get("Eagan")>50) {
        coloreg=color3;
      } else if (fifthJuvenile.get("Eagan")<=50 && fifthJuvenile.get("Eagan")>25) {
        coloreg=color2;
      } else if (fifthJuvenile.get("Eagan")<=25 && fifthJuvenile.get("Eagan")>0) {
        coloreg=color1;
      }


      if (fifthJuvenile.get("West St. Paul")>325) {
        colorwsp=color14;
      } else if (fifthJuvenile.get("West St. Paul")<=325 && fifthJuvenile.get("West St. Paul")>300) {
        colorwsp=color13;
      } else if (fifthJuvenile.get("West St. Paul")<=300 && fifthJuvenile.get("West St. Paul")>275) {
        colorwsp=color12;
      } else if (fifthJuvenile.get("West St. Paul")<=275 && fifthJuvenile.get("West St. Paul")>250) {
        colorwsp=color11;
      } else if (fifthJuvenile.get("West St. Paul")<=250 && fifthJuvenile.get("West St. Paul")>225) {
        colorwsp=color10;
      } else if (fifthJuvenile.get("West St. Paul")<=225 && fifthJuvenile.get("West St. Paul")>200) {
        colorwsp=color9;
      } else if (fifthJuvenile.get("West St. Paul")<=200 && fifthJuvenile.get("West St. Paul")>175) {
        colorwsp=color8;
      } else if (fifthJuvenile.get("West St. Paul")<=175 && fifthJuvenile.get("West St. Paul")>150) {
        colorwsp=color7;
      } else if (fifthJuvenile.get("West St. Paul")<=150 && fifthJuvenile.get("West St. Paul")>125) {
        colorwsp=color6;
      } else if (fifthJuvenile.get("West St. Paul")<=125 && fifthJuvenile.get("West St. Paul")>100) {
        colorwsp=color5;
      } else if (fifthJuvenile.get("West St. Paul")<=100 && fifthJuvenile.get("West St. Paul")>75) {
        colorwsp=color4;
      } else if (fifthJuvenile.get("West St. Paul")<=75 && fifthJuvenile.get("West St. Paul")>50) {
        colorwsp=color3;
      } else if (fifthJuvenile.get("West St. Paul")<=50 && fifthJuvenile.get("West St. Paul")>25) {
        colorwsp=color2;
      } else if (fifthJuvenile.get("West St. Paul")<=25 && fifthJuvenile.get("West St. Paul")>0) {
        colorwsp=color1;
      }


      if (fifthJuvenile.get("South St. Paul")>325) {
        colorbv=color14;
      } else if (fifthJuvenile.get("South St. Paul")<=325 && fifthJuvenile.get("South St. Paul")>300) {
        colorbv=color13;
      } else if (fifthJuvenile.get("South St. Paul")<=300 && fifthJuvenile.get("South St. Paul")>275) {
        colorbv=color12;
      } else if (fifthJuvenile.get("South St. Paul")<=275 && fifthJuvenile.get("South St. Paul")>250) {
        colorbv=color11;
      } else if (fifthJuvenile.get("South St. Paul")<=250 && fifthJuvenile.get("South St. Paul")>225) {
        colorbv=color10;
      } else if (fifthJuvenile.get("South St. Paul")<=225 && fifthJuvenile.get("South St. Paul")>200) {
        colorbv=color9;
      } else if (fifthJuvenile.get("South St. Paul")<=200 && fifthJuvenile.get("South St. Paul")>175) {
        colorbv=color8;
      } else if (fifthJuvenile.get("South St. Paul")<=175 && fifthJuvenile.get("South St. Paul")>150) {
        colorbv=color7;
      } else if (fifthJuvenile.get("South St. Paul")<=150 && fifthJuvenile.get("South St. Paul")>125) {
        colorbv=color6;
      } else if (fifthJuvenile.get("South St. Paul")<=125 && fifthJuvenile.get("South St. Paul")>100) {
        colorbv=color5;
      } else if (fifthJuvenile.get("South St. Paul")<=100 && fifthJuvenile.get("South St. Paul")>75) {
        colorbv=color4;
      } else if (fifthJuvenile.get("South St. Paul")<=75 && fifthJuvenile.get("South St. Paul")>50) {
        colorbv=color3;
      } else if (fifthJuvenile.get("South St. Paul")<=50 && fifthJuvenile.get("South St. Paul")>25) {
        colorbv=color2;
      } else if (fifthJuvenile.get("South St. Paul")<=25 && fifthJuvenile.get("South St. Paul")>0) {
        colorbv=color1;
      }


      if (fifthJuvenile.get("Lakeville")>325) {
        colorlk=color14;
      } else if (fifthJuvenile.get("Lakeville")<=325 && fifthJuvenile.get("Lakeville")>300) {
        colorlk=color13;
      } else if (fifthJuvenile.get("Lakeville")<=300 && fifthJuvenile.get("Lakeville")>275) {
        colorlk=color12;
      } else if (fifthJuvenile.get("Lakeville")<=275 && fifthJuvenile.get("Lakeville")>250) {
        colorlk=color11;
      } else if (fifthJuvenile.get("Lakeville")<=250 && fifthJuvenile.get("Lakeville")>225) {
        colorlk=color10;
      } else if (fifthJuvenile.get("Lakeville")<=225 && fifthJuvenile.get("Lakeville")>200) {
        colorlk=color9;
      } else if (fifthJuvenile.get("Lakeville")<=200 && fifthJuvenile.get("Lakeville")>175) {
        colorlk=color8;
      } else if (fifthJuvenile.get("Lakeville")<=175 && fifthJuvenile.get("Lakeville")>150) {
        colorlk=color7;
      } else if (fifthJuvenile.get("Lakeville")<=150 && fifthJuvenile.get("Lakeville")>125) {
        colorlk=color6;
      } else if (fifthJuvenile.get("Lakeville")<=125 && fifthJuvenile.get("Lakeville")>100) {
        colorlk=color5;
      } else if (fifthJuvenile.get("Lakeville")<=100 && fifthJuvenile.get("Lakeville")>75) {
        colorlk=color4;
      } else if (fifthJuvenile.get("Lakeville")<=75 && fifthJuvenile.get("Lakeville")>50) {
        colorlk=color3;
      } else if (fifthJuvenile.get("Lakeville")<=50 && fifthJuvenile.get("Lakeville")>25) {
        colorlk=color2;
      } else if (fifthJuvenile.get("Lakeville")<=25 && fifthJuvenile.get("Lakeville")>0) {
        colorlk=color1;
      }


      if (fifthJuvenile.get("TheRest")>325) {
        colortr=color14;
      } else if (fifthJuvenile.get("TheRest")<=325 && fifthJuvenile.get("TheRest")>300) {
        colortr=color13;
      } else if (fifthJuvenile.get("TheRest")<=300 && fifthJuvenile.get("TheRest")>275) {
        colortr=color12;
      } else if (fifthJuvenile.get("TheRest")<=275 && fifthJuvenile.get("TheRest")>250) {
        colortr=color11;
      } else if (fifthJuvenile.get("TheRest")<=250 && fifthJuvenile.get("TheRest")>225) {
        colortr=color10;
      } else if (fifthJuvenile.get("TheRest")<=225 && fifthJuvenile.get("TheRest")>200) {
        colortr=color9;
      } else if (fifthJuvenile.get("TheRest")<=200 && fifthJuvenile.get("TheRest")>175) {
        colortr=color8;
      } else if (fifthJuvenile.get("TheRest")<=175 && fifthJuvenile.get("TheRest")>150) {
        colortr=color7;
      } else if (fifthJuvenile.get("TheRest")<=150 && fifthJuvenile.get("TheRest")>125) {
        colortr=color6;
      } else if (fifthJuvenile.get("TheRest")<=125 && fifthJuvenile.get("TheRest")>100) {
        colortr=color5;
      } else if (fifthJuvenile.get("TheRest")<=100 && fifthJuvenile.get("TheRest")>75) {
        colortr=color4;
      } else if (fifthJuvenile.get("TheRest")<=75 && fifthJuvenile.get("TheRest")>50) {
        colortr=color3;
      } else if (fifthJuvenile.get("TheRest")<=50 && fifthJuvenile.get("TheRest")>25) {
        colortr=color2;
      } else if (fifthJuvenile.get("TheRest")<=25 && fifthJuvenile.get("TheRest")>0) {
        colortr=color1;
      }
    }
    e = prog.theMap(year, age);
    //upDate();
    for (String p : e.keySet()) {
      output+=p+" - "+e.get(p)+"\n";
    }
    //println( output);
    println( output + year+ age+"\n");
  }

  if (rectOne) {
    output="";
    currentColor = rectColor;
    





    e = prog.theMap(year, age);
    //upDate();
    for (String p : e.keySet()) {
      output+=p+" - "+e.get(p)+"\n";
    }
    //println( output);
    println( output + year+ age+"\n");
  }
  if (rectTwo) {
    output="";
    currentColor = rectColor;

    

    e = prog.theMap(year, age);
    //upDate();
    for (String p : e.keySet()) {
      output+=p+" - "+e.get(p)+"\n";
    }
    //println( output);
    println( output + year+ age+"\n");
  }
}

boolean overRect(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width && 
    mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

void rsmt() {
  PShape rsmt = bot.getChild("Rosemount");
  rsmt.disableStyle();
  fill(colorrsmt);
  shape(rsmt, 39, 30, 778, 668);
  fill(255, 0, 0);
  text("Rosemount", 320, 300);
}
void av() {
  PShape av = bot.getChild("Apple_Valley");
  av.disableStyle();
  fill(colorav);
  shape(av, 8, 21, 890, 690);
  fill(255, 0, 0);
  text("Apple", 200, 295);
  text("Valley", 200, 325);
}
void wsp() {
  PShape wsp = bot.getChild("WSTP");
  wsp.disableStyle();
  fill(colorwsp);
  shape(wsp, 10, 40, 850, 650);
  fill(255, 0, 0);
  text("WSTP", 355, 125);
}
void eg() {
  PShape eg = bot.getChild("Eagan");
  eg.disableStyle();
  fill(coloreg);
  shape(eg, 15, 40, 850, 650);
  fill(255, 0, 0);
  text("Eagan", 250, 170);
}
void bv() {
  PShape bv = bot.getChild("Burnsville");
  bv.disableStyle();
  fill(colorbv);
  shape(bv, 20, 35, 850, 650);
  fill(255, 0, 0);
  textSize(24);
  text("Burnsville", 90, 260);
}
void theRest() {
  PShape tr = bot.getChild("TheRest");
  tr.disableStyle();
  fill(colortr);
  shape(tr, 27, 49, 800, 600);
  fill(255, 0, 0);
  text("The Rest", 320, 400);
}
void lk() {
  PShape lk = bot.getChild("Lakeville");
  lk.disableStyle();
  fill(colorlk);
  shape(lk, 24, 49, 810, 610); 
  fill(255, 0, 0);
  text("Lakeville", 100, 375);
}


String upDate() {

  if (e.get("Rosemount")>325) {
    colorrsmt=color14;
  } else if (e.get("Rosemount")<=325 && e.get("Rosemount")>300) {
    colorrsmt=color13;
  } else if (e.get("Rosemount")<=300 && e.get("Rosemount")>275) {
    colorrsmt=color12;
  } else if (e.get("Rosemount")<=275 && e.get("Rosemount")>250) {
    colorrsmt=color11;
  } else if (e.get("Rosemount")<=250 && e.get("Rosemount")>225) {
    colorrsmt=color10;
  } else if (e.get("Rosemount")<=225 && e.get("Rosemount")>200) {
    colorrsmt=color9;
  } else if (e.get("Rosemount")<=200 && e.get("Rosemount")>175) {
    colorrsmt=color8;
  } else if (e.get("Rosemount")<=175 && e.get("Rosemount")>150) {
    colorrsmt=color7;
  } else if (e.get("Rosemount")<=150 && e.get("Rosemount")>125) {
    colorrsmt=color6;
  } else if (e.get("Rosemount")<=125 && e.get("Rosemount")>100) {
    colorrsmt=color5;
  } else if (e.get("Rosemount")<=100 && e.get("Rosemount")>75) {
    colorrsmt=color4;
  } else if (e.get("Rosemount")<=75 && e.get("Rosemount")>50) {
    colorrsmt=color3;
  } else if (e.get("Rosemount")<=50 && e.get("Rosemount")>25) {
    colorrsmt=color2;
  } else if (e.get("Rosemount")<=25 && e.get("Rosemount")>0) {
    colorrsmt=color1;
  }


  if (e.get("Apple Valley")>325) {
    colorav=color14;
  } else if (e.get("Apple Valley")<=325 && e.get("Apple Valley")>300) {
    colorav=color13;
  } else if (e.get("Apple Valley")<=300 && e.get("Apple Valley")>275) {
    colorav=color12;
  } else if (e.get("Apple Valley")<=275 && e.get("Apple Valley")>250) {
    colorav=color11;
  } else if (e.get("Apple Valley")<=250 && e.get("Apple Valley")>225) {
    colorav=color10;
  } else if (e.get("Apple Valley")<=225 && e.get("Apple Valley")>200) {
    colorav=color9;
  } else if (e.get("Apple Valley")<=200 && e.get("Apple Valley")>175) {
    colorav=color8;
  } else if (e.get("Apple Valley")<=175 && e.get("Apple Valley")>150) {
    colorav=color7;
  } else if (e.get("Apple Valley")<=150 && e.get("Apple Valley")>125) {
    colorav=color6;
  } else if (e.get("Apple Valley")<=125 && e.get("Apple Valley")>100) {
    colorav=color5;
  } else if (e.get("Apple Valley")<=100 && e.get("Apple Valley")>75) {
    colorav=color4;
  } else if (e.get("Apple Valley")<=75 && e.get("Apple Valley")>50) {
    colorav=color3;
  } else if (e.get("Apple Valley")<=50 && e.get("Apple Valley")>25) {
    colorav=color2;
  } else if (e.get("Apple Valley")<=25 && e.get("Apple Valley")>0) {
    colorav=color1;
  }


  if (e.get("Eagan")>325) {
    coloreg=color14;
  } else if (e.get("Eagan")<=325 && e.get("Eagan")>300) {
    coloreg=color13;
  } else if (e.get("Eagan")<=300 && e.get("Eagan")>275) {
    coloreg=color12;
  } else if (e.get("Eagan")<=275 && e.get("Eagan")>250) {
    coloreg=color11;
  } else if (e.get("Eagan")<=250 && e.get("Eagan")>225) {
    coloreg=color10;
  } else if (e.get("Eagan")<=225 && e.get("Eagan")>200) {
    coloreg=color9;
  } else if (e.get("Eagan")<=200 && e.get("Eagan")>175) {
    coloreg=color8;
  } else if (e.get("Eagan")<=175 && e.get("Eagan")>150) {
    coloreg=color7;
  } else if (e.get("Eagan")<=150 && e.get("Eagan")>125) {
    coloreg=color6;
  } else if (e.get("Eagan")<=125 && e.get("Eagan")>100) {
    coloreg=color5;
  } else if (e.get("Eagan")<=100 && e.get("Eagan")>75) {
    coloreg=color4;
  } else if (e.get("Eagan")<=75 && e.get("Eagan")>50) {
    coloreg=color3;
  } else if (e.get("Eagan")<=50 && e.get("Eagan")>25) {
    coloreg=color2;
  } else if (e.get("Eagan")<=25 && e.get("Eagan")>0) {
    coloreg=color1;
  }


  if (e.get("West St. Paul")>325) {
    colorwsp=color14;
  } else if (e.get("West St. Paul")<=325 && e.get("West St. Paul")>300) {
    colorwsp=color13;
  } else if (e.get("West St. Paul")<=300 && e.get("West St. Paul")>275) {
    colorwsp=color12;
  } else if (e.get("West St. Paul")<=275 && e.get("West St. Paul")>250) {
    colorwsp=color11;
  } else if (e.get("West St. Paul")<=250 && e.get("West St. Paul")>225) {
    colorwsp=color10;
  } else if (e.get("West St. Paul")<=225 && e.get("West St. Paul")>200) {
    colorwsp=color9;
  } else if (e.get("West St. Paul")<=200 && e.get("West St. Paul")>175) {
    colorwsp=color8;
  } else if (e.get("West St. Paul")<=175 && e.get("West St. Paul")>150) {
    colorwsp=color7;
  } else if (e.get("West St. Paul")<=150 && e.get("West St. Paul")>125) {
    colorwsp=color6;
  } else if (e.get("West St. Paul")<=125 && e.get("West St. Paul")>100) {
    colorwsp=color5;
  } else if (e.get("West St. Paul")<=100 && e.get("West St. Paul")>75) {
    colorwsp=color4;
  } else if (e.get("West St. Paul")<=75 && e.get("West St. Paul")>50) {
    colorwsp=color3;
  } else if (e.get("West St. Paul")<=50 && e.get("West St. Paul")>25) {
    colorwsp=color2;
  } else if (e.get("West St. Paul")<=25 && e.get("West St. Paul")>0) {
    colorwsp=color1;
  }


  if (e.get("South St. Paul")>325) {
    colorbv=color14;
  } else if (e.get("South St. Paul")<=325 && e.get("South St. Paul")>300) {
    colorbv=color13;
  } else if (e.get("South St. Paul")<=300 && e.get("South St. Paul")>275) {
    colorbv=color12;
  } else if (e.get("South St. Paul")<=275 && e.get("South St. Paul")>250) {
    colorbv=color11;
  } else if (e.get("South St. Paul")<=250 && e.get("South St. Paul")>225) {
    colorbv=color10;
  } else if (e.get("South St. Paul")<=225 && e.get("South St. Paul")>200) {
    colorbv=color9;
  } else if (e.get("South St. Paul")<=200 && e.get("South St. Paul")>175) {
    colorbv=color8;
  } else if (e.get("South St. Paul")<=175 && e.get("South St. Paul")>150) {
    colorbv=color7;
  } else if (e.get("South St. Paul")<=150 && e.get("South St. Paul")>125) {
    colorbv=color6;
  } else if (e.get("South St. Paul")<=125 && e.get("South St. Paul")>100) {
    colorbv=color5;
  } else if (e.get("South St. Paul")<=100 && e.get("South St. Paul")>75) {
    colorbv=color4;
  } else if (e.get("South St. Paul")<=75 && e.get("South St. Paul")>50) {
    colorbv=color3;
  } else if (e.get("South St. Paul")<=50 && e.get("South St. Paul")>25) {
    colorbv=color2;
  } else if (e.get("South St. Paul")<=25 && e.get("South St. Paul")>0) {
    colorbv=color1;
  }


  if (e.get("Lakeville")>325) {
    colorlk=color14;
  } else if (e.get("Lakeville")<=325 && e.get("Lakeville")>300) {
    colorlk=color13;
  } else if (e.get("Lakeville")<=300 && e.get("Lakeville")>275) {
    colorlk=color12;
  } else if (e.get("Lakeville")<=275 && e.get("Lakeville")>250) {
    colorlk=color11;
  } else if (e.get("Lakeville")<=250 && e.get("Lakeville")>225) {
    colorlk=color10;
  } else if (e.get("Lakeville")<=225 && e.get("Lakeville")>200) {
    colorlk=color9;
  } else if (e.get("Lakeville")<=200 && e.get("Lakeville")>175) {
    colorlk=color8;
  } else if (e.get("Lakeville")<=175 && e.get("Lakeville")>150) {
    colorlk=color7;
  } else if (e.get("Lakeville")<=150 && e.get("Lakeville")>125) {
    colorlk=color6;
  } else if (e.get("Lakeville")<=125 && e.get("Lakeville")>100) {
    colorlk=color5;
  } else if (e.get("Lakeville")<=100 && e.get("Lakeville")>75) {
    colorlk=color4;
  } else if (e.get("Lakeville")<=75 && e.get("Lakeville")>50) {
    colorlk=color3;
  } else if (e.get("Lakeville")<=50 && e.get("Lakeville")>25) {
    colorlk=color2;
  } else if (e.get("Lakeville")<=25 && e.get("Lakeville")>0) {
    colorlk=color1;
  }


  if (e.get("TheRest")>325) {
    colortr=color14;
  } else if (e.get("TheRest")<=325 && e.get("TheRest")>300) {
    colortr=color13;
  } else if (e.get("TheRest")<=300 && e.get("TheRest")>275) {
    colortr=color12;
  } else if (e.get("TheRest")<=275 && e.get("TheRest")>250) {
    colortr=color11;
  } else if (e.get("TheRest")<=250 && e.get("TheRest")>225) {
    colortr=color10;
  } else if (e.get("TheRest")<=225 && e.get("TheRest")>200) {
    colortr=color9;
  } else if (e.get("TheRest")<=200 && e.get("TheRest")>175) {
    colortr=color8;
  } else if (e.get("TheRest")<=175 && e.get("TheRest")>150) {
    colortr=color7;
  } else if (e.get("TheRest")<=150 && e.get("TheRest")>125) {
    colortr=color6;
  } else if (e.get("TheRest")<=125 && e.get("TheRest")>100) {
    colortr=color5;
  } else if (e.get("TheRest")<=100 && e.get("TheRest")>75) {
    colortr=color4;
  } else if (e.get("TheRest")<=75 && e.get("TheRest")>50) {
    colortr=color3;
  } else if (e.get("TheRest")<=50 && e.get("TheRest")>25) {
    colortr=color2;
  } else if (e.get("TheRest")<=25 && e.get("TheRest")>0) {
    colortr=color1;
  }



  //if(e.get("")>325){
  //  color=color14;
  //}
  //if(e.get("")<=325 && e.get("")>300){
  //  color=color13;
  //}
  //if(e.get("")<=300 && e.get("")>275){
  //  color=color12;
  //}
  //if(e.get("")<=275 && e.get("")>250){
  //  color=color11;
  //}
  //if(e.get("")<=250 && e.get("")>225){
  //  color=color10;
  //}
  //if(e.get("")<=225 && e.get("")>200){
  //  color=color9;
  //}
  //if(e.get("")<=200 && e.get("")>175){
  //  color=color8;
  //}
  //if(e.get("")<=175 && e.get("")>150){
  //  color=color7;
  //}
  //if(e.get("")<=150 && e.get("")>125){
  //  color=color6;
  //}
  //if(e.get("")<=125 && e.get("")>100){
  //  color=color5;
  //}
  //if(e.get("")<=100 && e.get("")>75){
  //  color=color4;
  //}
  //if(e.get("")<=75 && e.get("")>50){
  //  color=color3;
  //}
  //if(e.get("")<=50 && e.get("")>25){
  //  color=color2;
  //}
  //if(e.get("")<=25 && e.get("")>0){
  //  color=color1;
  //}

  return "updated";
}

//KEY
void key(){
  stroke(0);
  
  fill(128,121,126);
  rect(850,30,420,370);
  
  //25
  fill(199,189,196);
  stroke(3);
  textSize(15);
  text("25",890,95);
  fill(color1);
  rect(860,80,20,20);
  //50
    fill(color2);
  rect(860,100,40,20);
  //75
    fill(color3);
  rect(860,80+40,60,20);
  //100
    fill(color4);
  rect(860,80+60,80,20);
  
  //125
    fill(color5);
  rect(860,80+80,100,20);
  
  //150
    fill(color6);
  rect(860,80+100,120,20);
  
  //175
  fill(199,189,196);
   stroke(3);
  textSize(15);
  text("175",1010,215);
    fill(color7);
  rect(860,80+120,140,20);
  
  //200
    fill(color8);
  rect(860,80+140,160,20);
  //225
    fill(color9);
  rect(860,80+160,180,20);
  
  //250
    fill(color10);
  rect(860,80+180,200,20);
  //275
    fill(color11);
  rect(860,80+200,220,20);
  //300
    fill(color12);
  rect(860,80+220,240,20);
  //325
    fill(color13);
  rect(860,80+240,260,20);
  //350
  fill(199,189,196);
   stroke(3);
  textSize(15);
  text("375",1145,356);
  
      fill(color14);
  rect(860,340,280,20);
  
  textFont(font);
  fill(199,189,196);
  text("Cases Charged",890,60);
  
  

  
}
