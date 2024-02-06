package db;

import model.Task;

import java.util.ArrayList;

public class DBManager {
    private static ArrayList<Task> taskArrayList = new ArrayList<>();

    private static Long id = 4L;

    static {
        taskArrayList.add(new Task(1L,"Math" , "Do home tasks" , "12-02-2024", "No"));
        taskArrayList.add(new Task(2L,"Computer Networks" , "Do lab work" , "15-02-2024", "No"));
        taskArrayList.add(new Task(3L,"Football" , "Sport activity" , "10-02-2024", "No"));
    }

    public static void addTask(Task task){
        task.setId(id);
        taskArrayList.add(task);
        id++;
    }

    public static void updateTask(Task task){
        for (int i = 0; i < taskArrayList.size(); i++) {
            if(taskArrayList.get(i).getId().equals(task.getId())){
                taskArrayList.set(i,task);
            }
        }
    }

    public static Task getTask(Long id){
        for (int i = 0; i < taskArrayList.size() ; i++) {
            if(taskArrayList.get(i).getId().equals(id)){
                return taskArrayList.get(i);
            }
        }
        return null;
    }

    public static ArrayList<Task> getAllTasks(){
        return taskArrayList;
    }

    public static void deleteTask(Long id){
        for (int i = 0; i < taskArrayList.size(); i++) {
            if(taskArrayList.get(i).getId().equals(id)){
                taskArrayList.remove(i);
                break;
            }
        }
    }

}
