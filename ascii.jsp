<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ASCII Art</title>
</head>
<body>
    <h1>ASCII ART</h1>

    <form method="post">
        Entrez un mot : <input type="text" name="text" />
        <input type="submit" value="Afficher" />
    </form>

<%
    int L = 4;
    int H = 5;

    String input = request.getParameter("text");
    if (input != null && !input.isEmpty()) {
        input = input.toUpperCase();

        String[] rows = new String[H];
        rows[0] = " #  ##   ##  # # ### ###  ##  ### ###  ##  ### ###  # # ### ### # # ### ### ### ###  ##  ### ###  ##  ### "; // A-Z + ?
        rows[1] = "# # # # #   # # #   #   #    #   #  #  # #   #   #  # # #    #  # # #   #     # # # #  #    #   #  #    #  ";
        rows[2] = "### ##  #   ### ### ###  #   ### ###  ##  ### ###  ### ###  #  ### ### ###   # ### ###  #   ##  ###  #   ## ";
        rows[3] = "# # # # #   # #   #   #   #  #     #  # #   #   #  # # #    #  # #   # #     # # #   #  #  #      #  #     #";
        rows[4] = "# # ##   ## # # ### ###  ##  ### ### # #  ### ### # # ###  #  # # ### ###   # # #   #  ## ### ###  ##  ##  ";

        for (int i = 0; i < H; i++) {
            StringBuilder line = new StringBuilder();

            for (int j = 0; j < input.length(); j++) {
                char c = input.charAt(j);
                int index;

                if (c >= 'A' && c <= 'Z') {
                    index = c - 'A';
                } else {
                    index = 26; // le "?"
                }

                int start = index * L;
                int end = start + L;

                if (end <= rows[i].length()) {
                    line.append(rows[i].substring(start, end));
                } else {
                    line.append("????");
                }
            }

            out.println(line.toString() + "<br>");
        }
    }
%>

</body>
</html>
