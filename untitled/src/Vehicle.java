public class Vehicle {
    private String owner;
    private String mark;
    private String model;
    private int year;
    private String color;
    private double price;

    public Vehicle() {
    }

    public Vehicle(String owner, String mark, String model, int year, String color, double price) {
        this.owner = owner;
        this.mark = mark;
        this.model = model;
        this.year = year;
        this.color = color;
        this.price = price;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public String getMark() {
        return mark;
    }

    public void setMark(String mark) {
        this.mark = mark;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "{" +
                "owner = '" + owner + '\'' +
                "mark = '" + mark + '\'' +
                ", model = '" + model + '\'' +
                ", year = '" + year + '\'' +
                ", color = '" + color + '\'' +
                ", price = " + price;
    }
}
