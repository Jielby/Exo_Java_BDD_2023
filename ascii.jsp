<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ASCII Art Generator</title>
</head>
<body>
    <h2>ASCII Art Generator</h2>
    <form method="post">
        <label for="inputText">Enter Text:</label>
        <input type="text" id="inputText" name="inputText" required>
        <input type="submit" value="Generate">
    </form>

    <%
        // ASCII art rows for A-Z and ?
        String[] rows = new String[5];
        rows[0] = " #  ##   ##  # # ### ###  ##  ### ###  ##  ### ### # # ### ### ### # # ### ### ### ###  ##  ###  #   #   ###  ??? ";
        rows[1] = "# # # # #   # # #   #   #    #   #  #  # #   #   # # # #   #     # # # #     #   #   # # #   # # # #   #   ??? ";
        rows[2] = "### ##  #   ### ### ###  #   ### ###  ##  ### ### ### ### ###   #  ### ###   #   ### ### #   # ###  #   #   ??? ";
        rows[3] = "# # # # #   # #   #   #   #  #     #  # #   #   #   #   # # #  #   # #   #   #     # # # #   #   #  #   #   ??? ";
        rows[4] = "# # ##   ## # # ### ###  ##  ### ### # #  ### ###   # ### # # ### ### ###   #   ### # # #   # ### ### ###  ??? ";

        String inputText = request.getParameter("inputText");

        if (inputText != null && !inputText.isEmpty()) {
            inputText = inputText.toUpperCase();  // Convert text to uppercase
            int L = 4;  // Width of a letter
            int H = 5;  // Height of a letter

            // Generate ASCII art
            for (int i = 0; i < H; i++) {
                StringBuilder line = new StringBuilder();

                // For each character in the input text
                for (int j = 0; j < inputText.length(); j++) {
                    char c = inputText.charAt(j);
                    int index;

                    // If character is between A and Z
                    if (c >= 'A' && c <= 'Z') {
                        index = c - 'A'; // Find the index of the letter
                    } else {
                        index = 26; // If it's not a letter, use '?' (index 26)
                    }

                    // Each letter has a width L, so we extract L characters
                    int start = index * L;
                    int end = start + L;
                    line.append(rows[i].substring(start, end));
                }

                // Output the generated ASCII art line
                out.println("<pre>" + line.toString() + "</pre>");
            }
        }
    %>
</body>
</html>
