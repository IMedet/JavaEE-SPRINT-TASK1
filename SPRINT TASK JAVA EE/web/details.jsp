<%@ page import="model.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <%@include file="includehead.jsp"%>
</head>
<body>
<%@include file="includenavbar.jsp"%>
<br>
<div class="container mt-12">
    <form action="/update" method="post">
        <%
            Task task = (Task) request.getAttribute("OneTask");
        %>
        <input readonly name="taskId" value="<%=task.getId()%>">
        <br><br>
        <span>Наименование :</span>
        <br>
        <input style="width: 100%" type="text" id="taskName" name="taskName" value="<%=task.getName()%>">
        <br><br>
        <span>Описание :</span>
        <br>
        <input style="width: 100%" type="text" id="taskDescription" name="taskDescription" value="<%=task.getDescription()%>">
        <br><br>
        <span>Крайний срок :</span>
        <br>
        <input style="width: 100%" type="date" id="taskDeadline" name="taskDeadline" value="<%=task.getDeadlineDate()%>">
        <br><br>
        <span>Выполнено :</span>
        <br>
        <input style="width: 100%" type="text" id="isDone" name="isDone" value="<%=task.getIsdone()%>">
        <br><br>
        <button style="background-color: lawngreen; color: white; border: none" type="submit">Сохранить</button>
        <button style="background-color: red;border: none; color: white" ><a style="text-decoration: none; color: white" href="/update?id=<%=task.getId()%>">Удалить</a></button>
    </form>
</div>


</body>
</html>
