// code 1 FA 18
// bryan ma

// this code starts setting up two arrays - 
// one to hold strings, another to hold PImages.

// set up the sketch so that the arrayOfImagePaths
// is set up to contain a collection of image filenames
// located in the sketch folder. make sure the arrayOfPImages 
// is also set up to contain the same number of items. 

// once the arrays are working, use the draw loop to display
// all the images by looping through the results of filling the
// arrayOfPImages. 

float x;
float y;
float dx;
float dy;

String[] arrayOfImageFilenames = new String[5];
PImage[] arrayOfPImages = new PImage[5];

void setup() {
  size(1000,800);
  frameRate(5);
  arrayOfImageFilenames[0] = ("Shrek_0.png");
  arrayOfImageFilenames[1] = ("Shrek_1.png");
  arrayOfImageFilenames[2] = ("Shrek_2.png");
  arrayOfImageFilenames[3] = ("Shrek_3.png");
  arrayOfImageFilenames[4] = ("Shrek_4.png");
  
  for (int i = 0; i < arrayOfImageFilenames.length; i++) {
    arrayOfPImages[i] = loadImage(arrayOfImageFilenames[i]);  
  }
}

void draw() {
  for (int i = 0; i < arrayOfImageFilenames.length; i++) {
    x = random(0,500);
    y = random(0,500);
    arrayOfPImages[i] = loadImage(arrayOfImageFilenames[i]); 
    image(arrayOfPImages[i], x, y);
  }
}
