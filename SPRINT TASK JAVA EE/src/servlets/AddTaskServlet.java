package servlets;

import db.DBManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Task;

import java.io.IOException;


@WebServlet(value = "/addTask")
public class AddTaskServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("taskName");
        String description = req.getParameter("taskDescription");
        String deadline = req.getParameter("taskDeadline");
        String isdone = req.getParameter("isDone");
        Task task = new Task();
        task.setName(name);
        task.setDescription(description);
        task.setDeadlineDate(deadline);
        task.setIsdone(isdone);


        DBManager.addTask(task);
        resp.sendRedirect("/home");
    }
}
