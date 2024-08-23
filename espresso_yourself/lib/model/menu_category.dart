class MenuCategory {
  int id;
  String title;

  MenuCategory({required this.id, required this.title});

  static List<MenuCategory> categories = [
    MenuCategory(id: 1, title: 'Classic coffee'),
    MenuCategory(id: 2, title: 'Coffee beans'),
    MenuCategory(id: 3, title: 'Desert'),
  ];
}
