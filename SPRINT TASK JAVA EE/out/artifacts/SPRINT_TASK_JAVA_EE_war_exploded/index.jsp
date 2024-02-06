<%@ page import="java.util.ArrayList" %>
<%@ page import="db.DBManager" %>
<%@ page import="model.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="includehead.jsp"%>


</head>
<body>
<%@include file="includenavbar.jsp"%>

<br>

<div class="container mt-12 " >
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" >
        +Добавить Задания
    </button>
    <br>
    <br>
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Новое Задание</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="/addTask" method="post">
                    <div class="modal-body">
                        <span>Наименование :</span>
                        <br>
                        <input style="width: 100%" type="text" id="taskName" name="taskName" >
                        <br><br>
                        <span>Описание :</span>
                        <br>
                        <input style="width: 100%" type="text" id="taskDescription" name="taskDescription" >
                        <br><br>
                        <span>Крайний срок :</span>
                        <br>
                        <input style="width: 100%" type="date" id="taskDeadline" name="taskDeadline" >
                        <br><br>
                        <span>Выполнено :</span>
                        <br>
                        <input style="width: 100%" type="text" id="isDone" name="isDone" >

                    </div>
                    <div class="modal-footer">
                        <button  type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
                        <button type="submit" class="btn btn-primary">Добавить</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <table class="table table-striped">
        <thead>
        <tr>
        <th>ID</th>
        <th>Наименование</th>
        <th>Крайний срок</th>
        <th>Выполнено</th>
        <th>Детали</th>
        </tr>
        </thead>
        <tbody >
        <%
            ArrayList<Task> tasks = DBManager.getAllTasks();
            
            for(Task task : tasks ) {

        %>
        <tr>
            <td><%=task.getId()%></td>
            <td><%=task.getName()%></td>
            <td><%=task.getDeadlineDate()%></td>
            <td><%=task.getIsdone()%></td>
            <td><button style="border: none; background-color: dodgerblue; color: white"><a style="text-decoration: none; color: white" href="/details?id=<%=task.getId()%>">Детали</a></button></td>
        </tr>
        
        <%
            }
        %>
        
        </tbody>
    </table>

</div>
</body>
</html>









