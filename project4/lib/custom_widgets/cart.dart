class Cart {
  static final Cart instance = Cart._internal();
  factory Cart() => instance;
  Cart._internal();

  List<Map<String, dynamic>> items = [];

  void addToCart(Map<String, dynamic> item) {
    final existingItemIndex = items.indexWhere((i) => i['id'] == item['id']);
    if (existingItemIndex >= 0) {
      items[existingItemIndex]['quantity'] += item['quantity'];
    } else {
      items.add(item);
    }
  }

  void removeItem(int itemId) {
    items.removeWhere((item) => item['id'] == itemId);
  }

  void clear() {
    items.clear();
  }
}
