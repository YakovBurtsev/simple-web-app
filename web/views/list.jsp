<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users</title>
    <link rel="stylesheet" href="styles/w3.css">
</head>
<body class="w3-light-grey">
    <div class="w3-container w3-blue-grey w3-opacity w3-right-align">
        <h1>Super app!</h1>
    </div>

    <div class="w3-container w3-center w3-margin-bottom w3-padding">
        <div class="w3-card-4">
            <div class="w3-container w3-light-blue">
                <h2>Users</h2>
            </div>

            <!-- Внутри конструкции ниже мы получаем доступ к нескольким переменным:

                request — наш объект запроса, который мы передали из сервлета, где он назывался просто req;

                responce — объект ответа, в сервлете назывался resp;

                out — объект типа JspWriter (наследуется от обычного Writer),
                при помощи которого можем «писать» что-либо прямо в саму html-страничку.
                Запись out.println(«Hello world!») очень похожа на запись System.out.println(«Hello world!»), но не путайте их!
                out.println() «пишет» в html-страничку, а System.out.println — в системный вывод.
                Если вызвать внутри раздела с Java-кодом jsp-метод System.out.println() —
                то результаты увидите в консоли Tomcat, а не на страничке.

            -->
            <%
                List<String> names = (List<String>) request.getAttribute("userNames");

                if (names != null && !names.isEmpty()) {
                    out.println("<ul class=\"w3-ul\">");
                    for (String s : names) {
                        out.println("<li class=\"w3-hover-sand\">" + s + "</li>");
                    }
                    out.println("</ul>");

                } else out.println("<div class=\"w3-panel w3-red w3-display-container w3-card-4 w3-round\">\n"
                        +
                        "   <span onclick=\"this.parentElement.style.display='none'\"\n" +
                        "   class=\"w3-button w3-margin-right w3-display-right w3-round-large w3-hover-red w3-border w3-border-red w3-hover-border-grey\">×</span>\n" +
                        "   <h5>There are no users yet!</h5>\n" +
                        "</div>");
            %>
        </div>
    </div>

    <div class="w3-container w3-grey w3-opacity w3-right-align w3-padding">
        <button class="w3-btn w3-round-large" onclick="location.href='/'">Back to main</button>
    </div>
</body>
</html>
