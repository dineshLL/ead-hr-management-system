package com.ead.hrmgr.data.model;


import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name="EMPLOYEE")
@org.hibernate.annotations.Entity(
		dynamicUpdate = true
)
public class Employee {
    
    @Id
    @GeneratedValue
    @Column(name="employee_id")
    private int employeeId;
    
    @Column(name="name")
    private String name;
    
    @Column(name="salary")
    private Long salary;
    
    @Column(name="address")
    private String address;
    
    @OneToOne(optional = false , targetEntity = Role.class)
    @JoinColumn(name="emp_role")
    private Role empRole;
    
    @OneToMany(mappedBy="employee" , targetEntity = Task.class , fetch = FetchType.EAGER , cascade = CascadeType.ALL)
    private Set<Task> tasks; 

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Role getEmpRole() {
        return empRole;
    }

    public void setEmpRole(Role empRole) {
        this.empRole = empRole;
    }

    public Set<Task> getTasks() {
        return tasks;
    }

    public void setTasks(Set<Task> tasks) {
        this.tasks = tasks;
    }

    public Long getSalary() {
        return salary;
    }

    public void setSalary(Long salary) {
        this.salary = salary;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    
    
}
