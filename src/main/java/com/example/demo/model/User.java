package com.example.demo.model;

import java.util.Arrays;
import java.util.List;
import java.util.ArrayList;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;



@Entity
@NamedQuery(name = "find_all_users", query = "select u from User u")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column (nullable = false)
    private String username;

    @Column(nullable = false)
    private String password;

    private String roles;

    public String getUserRoles() {
        return roles;
    }

    public void setUserRoles(String roles) {
        this.roles = roles;
    }

    public User() {
        super();
    }

    public User(String name, String password, String roles) {
        super();
        this.username = name; 
        this.password = password; 
        this.roles = roles;
    }

    public Long getUserId() {
        return id;
    }

    public void setUserId(Long id){
        this.id = id;
    }

    public String getName() {
        return username;
    }

    public void setName(String username) {
        this.username = username;
    }

    public String getPassword(){
        return password;
    }

    public void setPassword(String password){
        this.password = password; 
    }

    @Override
    public String toString() {
        return "User [id= " + id + ", username=" + username + ", password = " + password + ", roles = " + roles +"]";
    }

    public List<String> getRoleList() {
        if (!this.roles.isEmpty()) {
            return Arrays.asList(this.roles.split(","));
        }
        return new ArrayList<>();
    }
}
