import java.util.InputMismatchException;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        VehicleManagement vehicleManagement = new VehicleManagement();

        System.out.println("= = = = = = = =[ Menu ]= = = = = = = =");
        System.out.println("Press 1: Add a motorbike (Thêm xe máy): ");
        System.out.println("Press 2: Add a car (Thêm ô tô)");
        System.out.println("Press 3: Show information list (Hiển thị thông tin) ");
        System.out.println("Press 4: Find vehicle by OWNER (Tìm phương tiện = tên chủ phương tiện)");
        System.out.println("Press 5: Find vehicle by MODEL (Tìm phương tiện = tên xe)");
        System.out.println("Press 6: Edit info by OWNER (Sửa thông tin = tên chủ xe");
        System.out.println("Press 7: Remove vehicle by OWNER (Xóa thông tin = tên chủ xe");
        System.out.println("Press 8: Exit");
        int choice = -1;

        while (choice == -1) {
            try {
                choice = scanner.nextInt();
            } catch (InputMismatchException e) {
                System.out.println("INPUT A NUMBER FROM 0 - 6");
            } finally {
                scanner.nextLine();
            }
        }

        switch (choice) {
            case 1:
                System.out.println("ENTER MOTOR'S INFO: ");
                System.out.println("Enter owner:");
                String owner = scanner.nextLine();
                System.out.println("Enter mark:");
                String mark = scanner.nextLine();
                System.out.println("Enter model:");
                String model = scanner.nextLine();
                System.out.println("Enter year:");
                int year = scanner.nextInt();
                System.out.println("Enter color:");
                String color = scanner.nextLine();
                System.out.println("Enter price:");
                double price = scanner.nextDouble();
                System.out.println("Enter capacity:");
                String capacity = scanner.nextLine();
                Motorbike motorbike = new Motorbike(owner);
                break;
            case 2:
                System.out.println("ENTER CAR'S INFO: ");
                System.out.println("Enter owner:");
                String owner = scanner.nextLine();
                System.out.println("Enter mark:");
                String mark = scanner.nextLine();
                System.out.println("Enter model:");
                String model = scanner.nextLine();
                System.out.println("Enter year:");
                int year = scanner.nextInt();
                System.out.println("Enter color:");
                String color = scanner.nextLine();
                System.out.println("Enter price:");
                double price = scanner.nextDouble();
                System.out.println("Enter seat");
                String seat = scanner.nextLine();
                System.out.println("Enter type");
                String type = scanner.nextLine();
                break;
            case 3:
//                System.out.println("Nhập thông cần tìm!");
//                int idFind = scanner.nextInt();
//                Person personFind = managementPerson.getPersonList().get(managementPerson.findById(idFind));
//                System.out.println(personFind);
//                break;
            case 5:
                System.out.println("Nhập thông cần sửa!");

                break;
            case 4:
                System.out.println("Nhập thông cần xoá!");

                break;
            default:
                System.exit(0);
        }


    }
}
