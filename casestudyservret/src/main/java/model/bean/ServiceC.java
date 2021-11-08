package model.bean;

public class ServiceC {
    private int id;
    private String name;
    private int area;
    private double cost;
    private int people;
    private RenType renType_;
    private ServiceType service_type;
    private String standard_room;
    private String description;
    private Double pool_area;
    private int number_of_floors;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public ServiceC(int id, String name, int area, double cost, int people, RenType renType_, ServiceType service_type, String standard_room, String description, Double pool_area, int number_of_floors) {
        this.id = id;
        this.name = name;
        this.area = area;
        this.cost = cost;
        this.people = people;
        this.renType_ = renType_;
        this.service_type = service_type;
        this.standard_room = standard_room;
        this.description = description;
        this.pool_area = pool_area;
        this.number_of_floors = number_of_floors;
    }

    public ServiceC() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getArea() {
        return area;
    }

    public void setArea(int area) {
        this.area = area;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public int getPeople() {
        return people;
    }

    public void setPeople(int people) {
        this.people = people;
    }

    public RenType getRenType_() {
        return renType_;
    }

    public void setRenType_(RenType renType_) {
        this.renType_ = renType_;
    }

    public ServiceType getService_type() {
        return service_type;
    }

    public void setService_type(ServiceType service_type) {
        this.service_type = service_type;
    }

    public String getStandard_room() {
        return standard_room;
    }

    public void setStandard_room(String standard_room) {
        this.standard_room = standard_room;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Double getPool_area() {
        return pool_area;
    }

    public void setPool_area(Double pool_area) {
        this.pool_area = pool_area;
    }

    public int getNumber_of_floors() {
        return number_of_floors;
    }

    public void setNumber_of_floors(int number_of_floors) {
        this.number_of_floors = number_of_floors;
    }
}
//	service_id int,
//            service_name varchar(45),
//            service_area int,
//            service_cost double,
//            service_max_people int,
//            rent_type_id int,
//            service_type_id int,
//            standard_room varchar(45),
//            description_other_convenience varchar(45),
//            pool_area double,
//            number_of_floors int,