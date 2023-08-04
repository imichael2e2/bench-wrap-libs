package com.javawordwrap;

import org.davidmoten.text.utils.WordWrap;
import java.util.Scanner;

class App {
    public static String readLinesFromStdin() {
        StringBuilder sb = new StringBuilder();
        Scanner scanner = new Scanner(System.in);

        while (scanner.hasNextLine()) {
            String line = scanner.nextLine();
            if (line.isEmpty()) {
                break;
            }
            sb.append(line).append("\n");
        }

        scanner.close();
        return sb.toString();
    }

    public static void main(String args[]) {
	System.out.print(WordWrap.from(readLinesFromStdin()).maxWidth(80).wrap());
    }
}
