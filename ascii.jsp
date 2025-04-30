<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Art ASCII - Alexandre</title>
    <style>
        body {
            font-family: monospace;
            background-color: #f2f2f2;
            padding: 20px;
        }
        .ascii-output {
            white-space: pre;
            background: #fff;
            padding: 10px;
            border: 1px solid #ccc;
            overflow-x: auto;
        }
    </style>
</head>
<body>

<h2>Générateur de texte en Art ASCII</h2>

<form method="post">
    <label for="text">Texte :</label><br>
    <input type="text" id="text" name="text" required>
    <br><br>

    <input type="submit" value="Afficher en ASCII">
</form>

<%
    int L = 4;
    int H = 5;

    String[] rows = {
        " A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  ? ",
        "A A B B C  D D E  F  G  H H I  J  K K L  M M N N O O P P Q Q R R S S T T U U V V W W X X Y Y Z Z ???",
        "AAA BBB CCC DDD EEE FFF GGG HHH III JJJ KKK LLL MMM NNN OOO PPP QQQ RRR SSS TTT UUU VVV WWW XXX YYY ZZZ ???",
        "A A B B C  D D E  F  G G H H I  J  K K L  M M N N O O P P Q Q R R S S T T U U V V W W X X Y Y Z Z ???",
        "A A B B CCC DDD EEE FFF GGG H H III JJJ KKK LLL M M N N O O P P QQQ RRR SSS TTT UUU V V W W X X Y Y ZZZ ???"
    };

    String input = request.getParameter("text");
    if (input != null && !input.trim().isEmpty()) {
        input = input.toUpperCase();

        out.println("<h3>Résultat :</h3>");
        out.println("<div class='ascii-output'>");

        for (int i = 0; i < H; i++) {
            StringBuilder line = new StringBuilder();

            for (int j = 0; j < input.length(); j++) {
                char c = input.charAt(j);
                int index;

                if (c >= 'A' && c <= 'Z') {
                    index = c - 'A';
                } else {
                    index = 26;
                }

                int start = index * L;
                int end = start + L;
                line.append(rows[i].substring(start, end));
            }

            out.println(line.toString() + "<br>");
        }

        out.println("</div>");
    }
%>

</body>
</html>
