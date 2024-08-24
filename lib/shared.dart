import 'package:shopping_app/models/laptop.dart';
import 'package:shopping_app/models/user.dart';

User user1 = User(name: "turki", password: "turki", email: "turki@gmail.com");
User user2 = User(name: "fahad", password: "fahad", email: "fahad@gmail.com");
User user3 = User(name: "ahmad", password: "ahmad", email: "ahmad@gmail.com");
List<User> users = [user1, user2, user3];
late User loggedIn;
Laptop? selectedLaptop;
Laptop laptop1 = Laptop(
    id: 1,
    name: "MateBook D 14",
    brand: "Huawei",
    processor: "Intel Core i5",
    ram: "16 GB",
    capacity: "512 GB PCIe NVMe M.2 SSD",
    image: "assets/laptops_images/huawei.jpg",
    price: 1999);

Laptop laptop2 = Laptop(
    id: 2,
    name: "Vivobook Pro 15 OLED",
    brand: "Asus",
    processor: "AMD Ryzen 5",
    ram: "8 GB",
    capacity: "512 GB PCIe NVMe M.2 SSD",
    image: "assets/laptops_images/asus.jpg",
    price: 2699);
Laptop laptop3 = Laptop(
    id: 3,
    name: "Cyborg 15 Gaming",
    brand: "MSI",
    processor: "Intel Core i7",
    ram: "16 GB",
    capacity: "1 TB SSD",
    image: "assets/laptops_images/msi.jpg",
    price: 4199);
Laptop laptop4 = Laptop(
    id: 4,
    name: "MateBook 14",
    brand: "Huawei",
    processor: "Intel Core Ultra 5",
    ram: "16 GB",
    capacity: "1 TB M.2 NVMe PCIe 4.0 SSD",
    image: "assets/laptops_images/ultra.jpg",
    price: 2999);
Laptop laptop5 = Laptop(
    id: 5,
    name: "MacBook Air 15 M3",
    brand: "Apple",
    processor: "M3",
    ram: "16 GB",
    capacity: "512 GB SSD",
    image: "assets/laptops_images/m3.jpg",
    price: 6899);

Laptop laptop6 = Laptop(
    id: 6,
    name: "MacBook Air 13 M1",
    brand: "Apple",
    processor: "M1",
    ram: "8 GB",
    capacity: "256 GB SSD",
    image: "assets/laptops_images/m1.jpg",
    price: 3279);

List<Laptop> laptops = [
  laptop1,
  laptop2,
  laptop3,
  laptop4,
  laptop5,
  laptop6,
];
