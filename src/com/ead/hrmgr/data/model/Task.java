package com.ead.hrmgr.data.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/* 
* This class is mapped with the task table in the database
*/

// signifies that the class is an entity
@Entity
//table the class maps to
@Table(name="TASK")
public class Task {
    // auto generated id
    @Id
    @GeneratedValue
    @Column(name="task_id")
    private int taskId;
    
    /*
    * Each task has an owning Employee which is joined by the emp_id column in the task table . Many
    * Tasks belong to one Employee.
    */
    @ManyToOne(targetEntity = Employee.class)
    @JoinColumn(name="emp_id")
    private Employee employee;
    
    @Column(name="description")
    private String description;
    
    @Column(name="duration")
    private long duration;

    public int getTaskId() {
        return taskId;
    }

    public void setTaskId(int taskId) {
        this.taskId = taskId;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public long getDuration() {
        return duration;
    }

    public void setDuration(long duration) {
        this.duration = duration;
    }
}
