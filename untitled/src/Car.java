public class Car extends Vehicle {
    private int seat;
    private String type;

    public Car(int seat, String type) {
        this.seat = seat;
        this.type = type;
    }

    public Car(String owner, String mark, String model, int year, String color, double price, int seat, String type) {
        super(owner, mark, model, year, color, price);
        this.seat = seat;
        this.type = type;
    }

    public int getSeat() {
        return seat;
    }

    public void setSeat(int seat) {
        this.seat = seat;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Car " + super.toString() +
                ", seat = " + seat +
                ", type = '" + type + '\'' +
                "} " + "\n";
    }
}