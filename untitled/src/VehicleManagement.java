import java.util.ArrayList;
import java.util.List;

public class VehicleManagement {
    private List<Vehicle> vehicleList;

    public VehicleManagement() {
        this.vehicleList = new ArrayList<>();
        this.vehicleList.add(new Car("Quan Nguyen","Vinfast", "LuxA", 2020, "silver", 1300, 5, "sedan"));
        this.vehicleList.add(new Motorbike("Quan Nguyen" ,"BMW", "C400GT", 2020, "grey", 320, "350cc"));
        this.vehicleList.add(new Car("Minh nhua","Mercedes", "G63AMG", 2020, "white", 12000, 5, "SUV"));
    }

    public String showInfo() {
        String str = "";
        for (Vehicle vehicle: this.vehicleList) {
            str += vehicle.toString();
        }
        return str;
    }

    public void add (Vehicle vehicle) {
        this.vehicleList.add(vehicle);
    }

    public int findByModel (String model) {
        for (int i = 0; i < vehicleList.size(); i++) {
            if (vehicleList.get(i).getModel().equals(model)) {
                return i;
            }
        }
        return -1;
    }

    public int findByOwner (String owner) {
        for (int i = 0; i < vehicleList.size(); i++) {
            if (vehicleList.get(i).getOwner().equals(owner)) {
                return i;
            }
        }
        return -1;
    }

    public void edit (String owner, Vehicle vehicle) {
        if (findByOwner(owner) == -1) {
            System.out.println("This owner is not available");
        } else  {
            vehicleList.set(findByOwner(owner), vehicle);

        }

    }

    public void remove (String owner) {

    }
}
