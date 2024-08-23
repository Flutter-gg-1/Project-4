class Cart {
  // Singleton pattern to ensure only one instance of Cart exists
  static final Cart _instance = Cart._internal();
  factory Cart() => _instance;
  Cart._internal();

  List<Map<String, dynamic>> items = [];

  // Adds an item to the cart
  void addToCart(Map<String, dynamic> item) {
    // Check if the item already exists in the cart
    final existingItemIndex = items.indexWhere((i) => i['id'] == item['id']);
    if (existingItemIndex >= 0) {
      // Update quantity if item already exists
      items[existingItemIndex]['quantity'] += item['quantity'];
    } else {
      // Add new item if it doesn't exist
      items.add(item);
    }
  }

  // Removes an item from the cart by ID
  void removeItem(int itemId) {
    items.removeWhere((item) => item['id'] == itemId);
  }

  // Optionally, a method to clear the cart
  void clear() {
    items.clear();
  }
}
