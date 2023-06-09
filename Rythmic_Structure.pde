//variables are declared
float s, energy, hue, input;


//variables are initialized
void setup() {
  size(400, 800);
  noLoop();
  colorMode(HSB, 360, 100, 100);
  noStroke();
  s = width/50; 
  energy = .0002;
  background(0);

  
}

void draw () {
  
  input = input + energy;
  hue = map(noise(input), 0, 1, 0, 360);
  
 // loop is initialized 
  for (float xpos = s/2; xpos < width; xpos = xpos + s){
  for (float ypos = s/2; ypos < height - s/2; ypos = ypos + s){
        s = random(width/ 40, width/ 30);
        input = input + energy;
        hue = map(noise(input), 0, 1, 0, 360);
        fill (hue, 50, 100);
   ellipse (xpos, ypos, s, s);  
  }
  }
    
} 
