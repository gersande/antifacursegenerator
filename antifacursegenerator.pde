
// Variables for Splash Page
PImage gamejamlogo; 
PFont jaapokkiFont;
PFont jaapokkiEnhanceFont;
PFont strongGlasgowFont;
PFont cochinFontRegularSize;
PFont cochinFontSmallSize;
String titleString;
String subtitleString;
String startButtonString;
String authorString;
String retryButtonString;
boolean startClicked;
int circleX, circleY;  // Position of circle button
int circleSize;   // Diameter of circle
boolean circleOver;
int retryX, retryY; // Position of retry button
int retrySize; // Height and Width of retry button
boolean retryOver; 
boolean retryClicked;
int r;
int s;
String[] curses;
String[] qualifiers;

void setup() {
  smooth();
  size(1200, 800);

  // Create the font
  jaapokkiEnhanceFont = createFont("Jaapokkienchance-Regular.otf", 50);
  jaapokkiFont = createFont("Jaapokki-Regular.otf", 48);
  strongGlasgowFont = createFont("StrongGlasgow.ttf", 30);
  cochinFontRegularSize = createFont("Cochin.ttc", 28);
  cochinFontSmallSize = createFont("Cochin.ttc", 16);

  // These are all the strings of the Splash page

  titleString = "ANTIFA CURSE GENERATOR";
  subtitleString = "PUNCH NAZIS CURSE FASCISTS PUNCH NAZIS CURSE FASCISTS PUNCH NAZIS CURSE FASCISTS PUNCH NAZIS CURSE FASCISTS";
  startButtonString = "Click Here To Start";
  authorString = "Made at the Antifa Game Jam on March 18 2018 in Processing by Gersande";

  // These are strings in the Generator page

  retryButtonString = "press Enter to try again.";

  // Assume the Start Button has not been pressed
  startClicked = false;
  circleOver = false;
  // THE "CIRCLE" is around the Start Text, it's basically a button
  circleX = width/2;
  circleY = height/2;
  circleSize = 300;
  
  curses = new String[64];
  curses[0] = "cis scum";
  curses[1] = "kulak";
  curses[2] = "revisionist";
  curses[3] = "bougie";
  curses[4] = "opportunist";
  curses[5] = "splitter";
  curses[6] = "capitalist-roader";
  curses[7] = "poseur";
  curses[8] = "lifestylist";
  curses[9] = "liberal";
  curses[10] = "reactionary";
  curses[11] = "class traitor";
  curses[12] = "psyop";
  curses[13] = "narc";
  curses[14] = "counter-revolutionary";
  curses[15] = "colonizer";
  curses[16] = "gentrifier";
  curses[17] = "bleached asshole";
  curses[18] = "douchebag";
  curses[19] = "BOOTLICKER";
  curses[20] = "white feminist";
  curses[21] = "Social Democrat";
  curses[22] = "PIG";
  curses[23] = "bigot";
  curses[24] = "nazi scum";
  curses[25] = "white savior";
  curses[26] = "imperialist";
  curses[27] = "petit bourgeois";
  curses[28] = "middle manager";
  curses[29] = "scab";  
  curses[30] = "sellout";
  curses[31] = "yuppie";
  curses[32] = "boss";
  curses[33] = "middle manager";
  curses[34] = "landlord";
  curses[35] = "slum lord";
  curses[36] = "ethnonationalist";
  curses[37] = "fascist";
  curses[38] = "yankee";
  curses[39] = "New York Times Columnist";
  curses[40] = "reactionary pseudo-intellectual";
  curses[41] = "centrist";
  curses[42] = "collaborator";
  curses[43] = "fiscal conservative";
  curses[44] = "sentient fedora";
  curses[45] = "Democrat";
  curses[46] = "federalist"; 
  curses[47] = "middle class";
  curses[48] = "social chauvinist";
  curses[49] = "blue blood";
  curses[50] = "entrepreneur";
  curses[51] = "early bitcoin adopter";
  curses[52] = "LinkedIn Premium User";
  curses[53] = "Tea Partyer";
  curses[54] = "GAMER";
  curses[55] = "neoliberal";
  curses[56] = "militant atheist";
  curses[57] = "start-up founder";
  curses[58] = "\"ally\"";
  curses[59] = "rationalist";
  curses[60] = "man baby";
  curses[61] = "normie";
  curses[62] = "patriot";
  curses[63] = "pretendian";
  
  qualifiers = new String[79];
  qualifiers[0] = "scum";
  qualifiers[1] = "kulak";
  qualifiers[2] = "revisionist";
  qualifiers[3] = "bougie";
  qualifiers[4] = "opportunist";
  qualifiers[5] = "insufferable";
  qualifiers[6] = "capitalist-roader";
  qualifiers[7] = "poseur";
  qualifiers[8] = "lifestyle";
  qualifiers[9] = "liberal";
  qualifiers[10] = "reactionary";
  qualifiers[11] = "class traitor";
  qualifiers[12] = "psyop";
  qualifiers[13] = "narc";
  qualifiers[14] = "counter-revolutionary";
  qualifiers[15] = "colonizing";
  qualifiers[16] = "gentrifying";
  qualifiers[17] = "TERF";
  qualifiers[18] = "SWERF";
  qualifiers[19] = "BOOTLICKER";
  qualifiers[20] = "white feminist";
  qualifiers[21] = "Social Democrat";
  qualifiers[22] = "PIG";
  qualifiers[23] = "bigot";
  qualifiers[24] = "nazi scum";
  qualifiers[25] = "white savior";
  qualifiers[26] = "imperialist";
  qualifiers[27] = "petit bourgeois";
  qualifiers[28] = "middle manager";
  qualifiers[29] = "scab";  
  qualifiers[30] = "sellout";
  qualifiers[31] = "yuppy";
  qualifiers[32] = "asshole in charge";
  qualifiers[33] = "middle manager";
  qualifiers[34] = "landlord";
  qualifiers[35] = "slum lord";
  qualifiers[36] = "ethnonationalist";
  qualifiers[37] = "fascist";
  qualifiers[38] = "yankee";
  qualifiers[39] = "New York Times Columnist";
  qualifiers[40] = "reactionary pseudo-intellectual";
  qualifiers[41] = "centrist";
  qualifiers[42] = "collaborator";
  qualifiers[43] = "fiscally conservative";
  qualifiers[44] = "sentient fedora";
  qualifiers[45] = "Democrat";
  qualifiers[46] = "federalist"; 
  qualifiers[47] = "another fucking";
  qualifiers[48] = "social chauvinist";
  qualifiers[49] = "dickweed";
  qualifiers[50] = "jackass";
  qualifiers[51] = "piece of shit";
  qualifiers[52] = "sleazy";
  qualifiers[53] = "just a really really fucking gross";
  qualifiers[54] = "icky";
  qualifiers[55] = "pointless";
  qualifiers[56] = "irritating";
  qualifiers[57] = "FUCKING OBNOXIOUS";
  qualifiers[58] = "cruddy";
  qualifiers[59] = "lousy";
  qualifiers[60] = "rotten";
  qualifiers[61] = "slimy";
  qualifiers[62] = "spineless";
  qualifiers[63] = "fucking";
  qualifiers[64] = "nazi";
  qualifiers[65] = "neocon";
  qualifiers[66] = "neoliberal";
  qualifiers[67] = "militant atheist";
  qualifiers[68] = "thirsty";
  qualifiers[69] = "heteronormative";
  qualifiers[70] = "transphobic";
  qualifiers[71] = "pacifist";
  qualifiers[72] = "racist";
  qualifiers[73] = "islamophobic";
  qualifiers[74] = "anti-Black";
  qualifiers[75] = "chauvinistic";
  qualifiers[76] = "ableist";
  qualifiers[77] = "productivity obsessed";
  qualifiers[78] = "obtuse";

  
  r = (int) random(curses.length);
  s = (int) random(qualifiers.length);

}

void draw() {  
  // background(102); // Apparently this will help with the text looking like shit... 
  update();  
}

// the following functions are called when startClicked is false

void drawSplash() {
  // Displays the image at point (0, height/2) at half of its size
  //image(img, 0, height/6, img.width/4, img.height/4);
  background(0);
  textAlign(CENTER);
  drawTypeTitle(width * 0.5);
  drawTypeSubtitle(width * 0.5);

  // draw the button 
  textFont(cochinFontRegularSize);
  fill(255);
  text(startButtonString, width * 0.5, height * 0.5);

  gamejamlogo = loadImage("antifagamejamlogo.png");  // Load the image into the program  
  image(gamejamlogo, 950, 500);
  textFont(cochinFontSmallSize);
  fill(60);
  text(authorString, 850, 740);
}

void drawTypeTitle(float x) {
  //line(x, 0, x, 65);
  //line(x, 220, x, height);
  textFont(jaapokkiEnhanceFont);
  fill(300, 300, 300);
  text(titleString, x, 195);
}

void drawTypeSubtitle(float x) {
  textFont(strongGlasgowFont);
  fill(50, 50, 50);
  text(subtitleString, x, 250);
}

void update() {
  if ( overCircle(circleX, circleY, circleSize) ) {
    circleOver = true;
  } else {
    circleOver = false;
  }
  if (startClicked == false) {
    drawSplash();
  } else {
    // THE GENERATOR WILL GO HERE
    drawCurseGenerator();
  }
}

void mousePressed() {
  if (circleOver) {
    startClicked = true;
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

// the following functions are called when startClicked is true

void drawCurseGenerator() {
  // This is the curse generator, for now it's here
  background(0);
  regenerate(r, s);
  textAlign(CENTER);
  textFont(cochinFontSmallSize);
  fill(180);
  text(retryButtonString, width * 0.8, height * 0.5);
  if (keyPressed) {
    if (key == RETURN || key == ENTER) {
      keyRelease();
    }
  }
  gamejamlogo = loadImage("antifagamejamlogo.png");  // Load the image into the program  
  image(gamejamlogo, 950, 500);
  textFont(cochinFontSmallSize);
  fill(60);
  text(authorString, 850, 740);
}

void keyRelease() {
  if (key == ENTER || key == RETURN) {
    r = (int) random(curses.length);
    s = (int) random(qualifiers.length);
  }
}

void regenerate(int i, int l) {
  String cursetext = curses[i];
  String qualifierstext = qualifiers[l];
  background(0);
  textAlign(CENTER);
  textFont(jaapokkiFont);
  fill(255);
  text(qualifierstext + " " + cursetext, width * 0.5, height * 0.3);
}
