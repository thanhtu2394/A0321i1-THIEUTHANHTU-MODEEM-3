package model.bean;

public class Customer {
    private int id;
    private Type type;
    private String name;
    private String briday;
    private boolean gender;
    private String id_card;
    private String phone;
    private String email;
    private String address;

    public Customer(int id, Type type, String name, String briday, boolean gender, String id_card, String phone, String email, String address) {
        this.id = id;
        this.type = type;
        this.name = name;
        this.briday = briday;
        this.gender = gender;
        this.id_card = id_card;
        this.phone = phone;
        this.email = email;
        this.address = address;
    }

    public Customer() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBriday() {
        return briday;
    }

    public void setBriday(String briday) {
        this.briday = briday;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getId_card() {
        return id_card;
    }

    public void setId_card(String id_card) {
        this.id_card = id_card;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "customer{" +
                "id=" + id +
                ", type=" + type +
                ", name='" + name + '\'' +
                ", briday='" + briday + '\'' +
                ", gender=" + gender +
                ", id_card=" + id_card +
                ", phone=" + phone +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
