// declare variables
float x, y, spacing, diameter, inputA, inputB, C;
boolean triangleDirection;

void setup() {
  size(400, 800);

  // initialize variables
  spacing = 10;
  diameter = 7.5;
  inputA = 0;
  inputB = 0;
  background(0);
  noStroke();
}

void draw() {
  noLoop();

  // noise + nested loop
  for (x = spacing/2; x < width; x = x + spacing) {
    for (y = spacing/2; y < height; y = y + spacing) {
      inputA = inputA + C;
      inputB = inputB + C;
      C = random(width/ 50, width/ 50);
      diameter = map(noise(inputA), 0, 1, 2, 25);
      spacing = map(noise(inputA), 0, 1, 1, 40);

      fill(random(255), 0, 80);
      triangleDirection = random(2) < 1; // random boolean value
      if (triangleDirection) {
        triangle(x - diameter/2, y - diameter/2, x + diameter/2, y - diameter/2, x, y + diameter/2); // pointing up
      } else {
        triangle(x - diameter/2, y + diameter/2, x + diameter/2, y + diameter/2, x, y - diameter/2); // pointing down
      }
    }
  }
}
