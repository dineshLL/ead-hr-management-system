package com.ead.hrmgr.data.model;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/* 
* This class is mapped with the role table in the database
*/

// signifies that the class is an entity
@Entity
//table the class maps to
@Table(name="ROLE")
public class Role {
    // auto generated id
    @Id
    @GeneratedValue
    @Column(name="role_id")
    private int roleId;
    
    @Column(name="title")
    private String title;
    
    @Column(name="description")
    private String description;

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    @Override
    public String toString(){
        return "role : "+ getRoleId() + ", title : "+getTitle() ;
    }
}
