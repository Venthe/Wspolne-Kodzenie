public enum MovementDirection {
  Up(1), Down(-1), Left(-2), Right(2);

  private MovementDirection(int value) {
    this.value = value;
  }

  private int value;

  boolean isReverse(MovementDirection newMovementDirection) {
    return this.value == newMovementDirection.value * -1;
  }
}

public class Snake {
  MovementDirection movmementDirection = MovementDirection.Up;

  public int x;
  public int y;

  public Snake(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void moveSnake() {
    switch (movmementDirection) {
    case Up:
      y--;
      break;
    case Down:
      y++;
      break;
    case Left:
      x--;
      break;
    case Right:
      x++;
      break;
    }

    fixOutOfBounds();
  }



  void fixOutOfBounds() {
    if (x>=gridColumns) {
      x=0;
    } else if (x<0) {
      x=gridColumns;
    }

    if (y>=gridRows) {
      y=0;
    } else if (y<0) {
      y=gridRows;
    }
  }

  void drawSnake() {
    pushMatrix();
    translate(x * sizeOfSquare, y * sizeOfSquare);
    fill(0, 255, 0);
    rect(0, 0, sizeOfSquare, sizeOfSquare);
    popMatrix();
  }

  void changeDirection(MovementDirection newMovementDirection) {
    if (movmementDirection.isReverse(newMovementDirection)) {
      return;
    }

    movmementDirection = newMovementDirection;
  }
}
