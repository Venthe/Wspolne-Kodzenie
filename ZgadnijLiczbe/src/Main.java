import java.util.Random;
import java.util.Scanner;

public class Main {

  public static void main(String[] args) {
    // Przywitanie
    System.out.println("Witaj w naszym programie!");

    // Stworzyła nową liczbę
    int numberToBeFound = new Random().nextInt(100);
    System.out.println("Wylosowana liczba to: " + numberToBeFound);

    // Dopoki gra trwa
    boolean gameIsOn = true;
    while (gameIsOn) {
      // Zapytaj użytkownika o liczbę
      System.out.print("Wpisz liczbę: ");
      Scanner reader = new Scanner(System.in);
      int numberPickedByUser = reader.nextInt();
      System.out.println("Uzytkownik wpisal: " + numberPickedByUser);

      // Jezeli liczba się zgadza z wybraną, to zakończ grę
      if (numberPickedByUser == numberToBeFound) {
        System.out.println("Gra zakończona, zgadłeś!");
        gameIsOn = false;
      } else {
        // Jeżeli liczba się nie zgadza z wybraną liczbą, to zapytaj raz jeszcze
        System.out.println("Nie zgadłeś! Spróbuj jeszcze raz");

        // Podpowiedz użytkownikowi czy jest mniejsza, czy większa
        if (numberPickedByUser < numberToBeFound) {
          System.out.println("Szukana liczba jest większa!");
        } else {
          System.out.println("Szukana liczba jest mniejsza!");
        }
      }
    }

    System.out.println("Dziękuję za grę!");
  }
}
