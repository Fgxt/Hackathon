package org.academiadecodigo.pettolove.persistence.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "user")
public class User extends AbstractModel {

    private String Name;

    private String userName;

    private String email;

    private String phone;

    private String password;

    @OneToMany(

            cascade = {CascadeType.ALL},
            orphanRemoval = true,
            mappedBy = "user",
            fetch = FetchType.EAGER
    )
    private List<Animal> animals = new ArrayList<>();


    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public void addAnimal(Animal animal){
        animals.add(animal);
        animal.setUser(this);

    }

    public void removeAnimal(Animal animal) {
        animals.remove(animal);
        animal.setUser(null);
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<Animal> getAnimals() {
        return animals;
    }

    public void setAnimals(List<Animal> animals) {
        this.animals = animals;
    }
}

