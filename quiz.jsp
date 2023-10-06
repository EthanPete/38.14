<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Addition Quiz</title>
</head>
<body>
    <h1>Addition Quiz</h1>
    
    <form action="quiz.jsp" method="post">
        <% 
            // Initialize variables
            int num1 = (int) (Math.random() * 10);
            int num2 = (int) (Math.random() * 10);
            int answer = num1 + num2;

            // Check if the form is submitted
            if (request.getMethod().equals("POST")) {
                int userAnswer = Integer.parseInt(request.getParameter("userAnswer"));
                String message = "";
                
                // Check the user's answer
                if (userAnswer == answer) {
                    message = "Correct!";
                } else {
                    message = "Incorrect. The correct answer is " + answer + ".";
                }
                
                out.println("<p>" + message + "</p>");
            }
        %>
        
        <p>What is <%= num1 %> + <%= num2 %>?</p>
        <input type="number" name="userAnswer" required>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
