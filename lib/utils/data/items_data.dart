import '../../models/item.dart';

List<Item> items = [
  Item.fromJson({
    'id': 1,
    'name': 'T-Shirt',
    'description':
        'Our t-shirt is crafted from premium 100% cotton fabric, offering both comfort and durability. With its classic cut and soft feel, it’s perfect for everyday wear. The vibrant colors adds a fresh look, and it pairs well with jeans or shorts. Machine washable and available in various sizes.',
    'rating': 4.5,
    'reviews': 120,
    'imagePath': 'assets/images/tshirt-teal.png',
    'secondImagePath': 'assets/images/tshirt-white.png',
    'category': 'Clothing',
    'stock': 10,
    'price': 19.99,
  }),
  Item.fromJson({
    'id': 2,
    'name': 'Jacket',
    'description':
        'This sleek jacket combines style with functionality. Made from high-quality polyester and featuring a warm lining, it’s ideal for cooler weather. The jacket includes a zippered front, adjustable cuffs, and multiple pockets for convenience. Perfect for casual outings or layering over other clothing. Machine washable.',
    'rating': 4.7,
    'reviews': 80,
    'imagePath': 'assets/images/jacket-black.png',
    'secondImagePath': 'assets/images/jacket-white.png',
    'category': 'Clothing',
    'stock': 10,
    'price': 59.99
  }),
  Item.fromJson({
    'id': 3,
    'name': 'Cap',
    'description':
        'This cap features a classic design with an adjustable strap for a customized fit. Made from durable cotton material, it provides a comfortable wear while shielding your eyes from the sun. The cap has a stylish embroidered logo and is suitable for both casual and outdoor activities. Available in one size.',
    'rating': 4.3,
    'reviews': 65,
    'imagePath': 'assets/images/cap-grey.png',
    'secondImagePath': 'assets/images/cap-oddgreen.png',
    'category': 'Clothing',
    'stock': 10,
    'price': 14.99,
  }),
  Item.fromJson({
    'id': 4,
    'name': 'Headset',
    'description':
        'Experience superior sound quality with our high-performance headset. Equipped with noise-cancellation technology, it provides clear audio for an immersive listening experience. The headset features a comfortable over-ear design with plush padding, adjustable headband, and a built-in microphone for hands-free calls. Ideal for gaming, music, and video conferencing.',
    'rating': 4.8,
    'reviews': 150,
    'imagePath': 'assets/images/headset.png',
    'secondImagePath': '',
    'category': 'Electronics',
    'stock': 10,
    'price': 89.99,
  }),
  Item.fromJson({
    'id': 5,
    'name': 'Mouse',
    'description':
        'Our ergonomic wireless mouse is designed for comfort and precision. It features adjustable DPI settings to customize sensitivity, and its sleek, contoured shape reduces hand strain. The mouse includes programmable buttons for added functionality and a long-lasting battery life. Ideal for both office use and gaming.',
    'rating': 4.6,
    'reviews': 90,
    'imagePath': 'assets/images/mouse.png',
    'secondImagePath': '',
    'category': 'Electronics',
    'stock': 10,
    'price': 29.99,
  }),
  Item.fromJson({
    'id': 6,
    'name': 'Keyboard',
    'description':
        'Enhance your typing experience with our mechanical keyboard. Featuring customizable backlighting and macro support, this keyboard is perfect for both work and gaming. The tactile switches provide a satisfying typing experience, and the sturdy build ensures durability. The keyboard includes programmable keys and multiple lighting effects to match your style.',
    'rating': 4.9,
    'reviews': 110,
    'imagePath': 'assets/images/keyboard.png',
    'secondImagePath': '',
    'category': 'Electronics',
    'stock': 2,
    'price': 119.99
  }),
];

Map<String, List<List<String>>> categories = {
  'Clothing': [
    ['T-Shirt', 'assets/images/tshirt-teal.png'],
    ['Jacket', 'assets/images/jacket-black.png'],
    ['Cap', 'assets/images/cap-grey.png'],
  ],
  'Electronics': [
    ['Headset', 'assets/images/headset.png'],
    ['Mouse', 'assets/images/mouse.png'],
    ['Keyboard', 'assets/images/keyboard.png'],
  ]
};
