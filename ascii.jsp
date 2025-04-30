import java.util.*;
import java.io.*;

class Solution {

    public static void main(String args[]) {
        Scanner in = new Scanner(System.in);
        int L = in.nextInt(); // Largeur d'une lettre
        int H = in.nextInt(); // Hauteur d'une lettre
        if (in.hasNextLine()) {
            in.nextLine(); // Passe à la ligne suivante
        }

        String T = in.nextLine().toUpperCase(); // Texte à afficher (en majuscule)

        // On lit les H lignes du style ASCII
        String[] rows = new String[H];
        for (int i = 0; i < H; i++) {
            rows[i] = in.nextLine();
        }

        // Pour chaque ligne de la hauteur
        for (int i = 0; i < H; i++) {
            StringBuilder line = new StringBuilder();

            // Pour chaque lettre du texte T
            for (int j = 0; j < T.length(); j++) {
                char c = T.charAt(j);
                int index;

                // Si c'est une lettre entre A et Z
                if (c >= 'A' && c <= 'Z') {
                    index = c - 'A';
                } else {
                    index = 26; // Sinon on prend l'index du caractère "?"
                }

                // Chaque lettre a une largeur L, on extrait donc L caractères
                int start = index * L;
                int end = start + L;
                line.append(rows[i].substring(start, end));
            }

            // On affiche la ligne construite
            System.out.println(line.toString());
        }
    }
}
