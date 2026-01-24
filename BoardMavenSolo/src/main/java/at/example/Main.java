package at.example;

import java.util.Scanner;

import at.htl.board.BoardUtil;

public class Main {
    private static void showCase(BoardUtil game) {
        // Graustufen Reihe hinten
        int row = 0;
        while (row < game.rows) {
            game.setRect(row, game.cols - 1, game.color(255 - 20 * row));
            row++;
        }

        // Spielfiguren
        game.setCircle(0, 0, game.color(255, 0, 0));
        game.setCircle(2, 2, game.color(0, 0, 255));
        game.setCircle(2, 3);

        game.setLetter(1, 1, 'A', game.color(200, 180, 255));
        game.setLetter(1, 2, 'B', game.color(20, 80, 55));
        game.setLetter(1, 3, 'C', game.color(255, 0, 0));
    }

    public static void main(String[] args) {
        var game = BoardUtil.openGameBoard(14, 6, 40);
        showCase(game);

        Scanner sc = new Scanner(System.in);
        char letter;
        String input;
        int x, y;

        do {
            System.out.print("Gib Zeichen ein: ");
            input = sc.nextLine();

            if (!input.equalsIgnoreCase("exit") && input.length() > 0) {
                letter = input.charAt(0);

                System.out.print("Gib Reihe ein: ");
                y = sc.nextInt();

                System.out.print("Gib Spalte ein: ");
                x = sc.nextInt();
                sc.nextLine();

                game.setLetter(y - 1, x - 1, letter, game.color(255, 0, 0));
            }
        } while (!input.equalsIgnoreCase("exit"));

        System.out.println("Game ended");
        game.exit();

    }
}
