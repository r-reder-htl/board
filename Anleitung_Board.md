# 🟢 Game-Board (powered by Processing)

👋 **Willkommen zur Benutzung des Game-Boards!**  
In diesem Tutorial lernst du, wie man mit **board.jar** ein graphisches Fenster mit einem Game-Board erhält.  
Die Bibliothek verwendet **Java mit Processing**, um Formen in einem Fenster darzustellen.

---

## 🎯 Ziele

Nach diesem Tutorial kannst du:
- 🔁 `board.jar`-Bibliothek verwenden
- 🔂 Deine Spiel mit diesem Board programmieren.
---

## 🧩 Ausgangscode

Der folgende Code zeigt wie du in deiner Applikation ein Board verwenden kannst:

```java
import java.util.Scanner;
import at.htl.board.BoardUtil;

public class MyGame {

  public static void main(String[] args) {
    BoardUtil game = BoardUtil.openGameBoard(5,5,40);
    
    Scanner sc = new Scanner(System.in);
    char letter;
    String input;
    int x, y;

    do {
      System.out.print("Gib Zeichen ein: ");
      input = sc.nextLine();

      if(!input.equalsIgnoreCase("exit") && input.legth() > 0){
        letter = input.charAt(0);
        
        System.out.print("Gib Reihe ein: ");
        y = sc.nextInt();

        System.out.print("Gib Spalte ein: ");
        x = sc.nextInt();
        sc.nextLine();
        
        game.setLetter(y-1, x-1, letter, game.color(255, 0, 0));
      }
    } while (!input.equalsIgnoreCase("exit"));

    System.out.println("Game ended");
    game.exit();

  } 
}
```

🟡 **Beobachtung:**  
Der Code benutzt **BoardUtil.openGameBoard(numberOfRows,numberOfCols,cellSize)**, um ein Fenster mit einem Game-Board mit gewünschter Anzahl von Reihen und Spalten zu öffnen.
Danach zeigt die main-Funktion, wie man in einzelne Felder Buchstaben setzen kann. Dabei wird der Benutzer nach dem Zeichen und der Position gefragt.
Position für den Benutzer startet bei (1,1), um in das Feld links oben ein Zeichen zu setzten. Intern wird jeweils **-1** berechnet, da das Board von (0,0) bis (maximale rows - 1, maximale cols - 1) addressiert werden muss.

---

## 🧩 Kompilieren und Starten

Die Applikation muss mit javac und dem richtigen **classpath (-cp)** kompiliert werden. Dabei muss im gleichen Ordner wie die Datei "**MyGame.java**" die Datei "**board.jar**" liegen.
Oder du verwendest maven-Buildsystem.
Siehe:
BoardMaven(inkl. processing core) oder
BoardMavenSolo (sauber mit extra dependency to core.jar von processing))

Hier die Anleitung, wenn du es manuell machen möchtest.
Die aktuell board.jar Datei findest du in diesem Repo unter ./repo/...
Die jar-Datei ohne "-solo-" hat processing schon integriert.

```bash
javac -cp .:board.jar MyGame.java
```

Evtuell folgendes beachten:

```bash
javac -cp .;board.jar MyGame.java  // Windows
javac -cp .:board.jar MyGame.java  // Linux/macOS
```

Wenn es keinen Fehler gegeben hat, kann die erstellte "**MyGame.class**" Datei zum Laufen gebracht werden. Auch hier muss der **classpath (-cp)** gesetzt sein.

```bash
java -cp .:board.jar MyGame
```

---

## 🟦 Erweiterungen: Kreise einfügen

🎯 **Ziel:**  
Zeichne **einen roten Kreis in Zelle 1/1** (oben links).

```java
// Kreis mit RGB-Farbe rot in Zelle obere linke Zelle.
game.setCircle(0, 0, game.color(255, 0, 0));
```

---

## 🟦 Erweiterungen: Rechteck einfügen

🎯 **Ziel:**  
Zeichne **ein blaues Rechteck in Zelle 2/3** (oben links).

```java
// Rechteck mit RGB-Farbe blau in eine Zelle setzen.
game.setRect(1, 2, game.color(0, 0, 255));
```

---

## 🧠 Hinweis

Wenn die Schriftfarbe dunkel ist, ist die Hintergrundfarbe einer Zelle weiß. Falls die Schriftfarbe sehr dunkel wird, wird automatisch der Hintergrund der Zelle schwarz, um einen besseren Konstrast zu gewährleisten.
