int sizeOfSquare = 50;
int gridRows = 0;
int gridColumns = 0;

int startX=5;
int startY=5;

Snake snake;

void setup() {
  background(150);
  size(600, 600);
  frameRate(4);
  
  snake = new Snake(startX, startY);

  gridRows = height / sizeOfSquare;
  gridColumns = width / sizeOfSquare;
}

void draw() {
  background(150);
  snake.moveSnake();

  drawGrid();
  snake.drawSnake();
}

void drawGrid() {
  for (int row=0; row<gridRows; row++) {
    for (int column=0; column<gridColumns; column++) {
      pushMatrix();
      translate(column * sizeOfSquare, row * sizeOfSquare);
      noFill();
      stroke(0);
      strokeWeight(2);
      rect(0, 0, sizeOfSquare, sizeOfSquare);
      popMatrix();
    }
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) {
      snake.changeDirection(MovementDirection.Up);
    } else if (keyCode == DOWN) {
      snake.changeDirection(MovementDirection.Down);
    } else if (keyCode == LEFT) {
      snake.changeDirection(MovementDirection.Left);
    } else if (keyCode == RIGHT) {
      snake.changeDirection(MovementDirection.Right);
    }
  }
}
