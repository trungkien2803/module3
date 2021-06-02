package customer;

public class Customer {
    private String name;
    private String age;
    private String address;
    private String urlImg;

    public Customer() {
    }

    public Customer(String name, String age, String address, String urlImg) {
        this.name = name;
        this.age = age;
        this.address = address;
        this.urlImg = urlImg;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getUrlImg() {
        return urlImg;
    }

    public void setUrlImg(String urlImg) {
        this.urlImg = urlImg;
    }
}
