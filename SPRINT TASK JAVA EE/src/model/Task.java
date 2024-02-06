package model;

public class Task {
    private Long id;
    private String name;
    private String description;
    private String deadlineDate;
    private String isdone ;

    public Task() {
    }

    public Task(Long id, String name, String descripton, String deadlineDate, String isdone) {
        this.id = id;
        this.name = name;
        this.description = descripton;
        this.deadlineDate = deadlineDate;
        this.isdone = isdone;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String descripton) {
        this.description = descripton;
    }

    public String getDeadlineDate() {
        return deadlineDate;
    }

    public void setDeadlineDate(String deadlineDate) {
        this.deadlineDate = deadlineDate;
    }

    public String getIsdone() {
        return isdone;
    }

    public void setIsdone(String isdone) {
        this.isdone = isdone;
    }


}
