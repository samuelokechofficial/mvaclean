class Category {
  final String id;
  final String name;
  final String icon;
  final String image;

  Category({required this.id, required this.name, required this.icon, required this.image});
}

class Item {
  final String id;
  final String name;
  final String category;
  final int price;
  final String description;
  final String image;

  Item({required this.id, required this.name, required this.category, required this.price, required this.description, required this.image});
}

final List<Category> dummyCategories = [
  Category(id: '1', name: 'Estates', icon: '🏠', image: 'assets/barikaback.png'),
  Category(id: '2', name: 'Jewelry', icon: '💍', image: 'assets/ss.png'),
  Category(id: '3', name: 'Baby & Kids', icon: '🍼', image: 'assets/ss1.png'),
  Category(id: '4', name: 'Electronics', icon: '📱', image: 'assets/ss2.png'),
  Category(id: '5', name: 'Makeup', icon: '💄', image: 'assets/uhomeback.png'),
  Category(id: '6', name: 'Fashion', icon: '👗', image: 'assets/barikaback.png'),
];

final List<Item> dummyItems = [
  Item(id: '1', name: 'Luxury Villa - Kololo', category: 'Estates', price: 450000000, description: '5 bedroom villa in the heart of Kololo. Fully furnished with modern amenities, swimming pool, and 24hr security.', image: 'assets/barikaback.png'),
  Item(id: '2', name: 'Apartment - Nakasero', category: 'Estates', price: 120000000, description: '3 bedroom apartment in Nakasero. High-rise with great city views, gym, and parking.', image: 'assets/uhomeback.png'),
  Item(id: '3', name: 'Gold Necklace Set', category: 'Jewelry', price: 850000, description: 'Beautiful 18k gold necklace set with matching earrings. Perfect for any occasion.', image: 'assets/ss.png'),
  Item(id: '4', name: 'Diamond Ring', category: 'Jewelry', price: 2500000, description: 'Elegant diamond engagement ring. 1 carat, white gold band, certified authentic.', image: 'assets/ss1.png'),
  Item(id: '5', name: 'Baby Stroller', category: 'Baby & Kids', price: 350000, description: 'Lightweight foldable baby stroller. Suitable for newborns to 3 years. Easy to carry.', image: 'assets/ss2.png'),
  Item(id: '6', name: 'Kids Learning Tablet', category: 'Baby & Kids', price: 280000, description: 'Educational tablet for kids aged 3-10. Pre-loaded with learning apps and parental controls.', image: 'assets/barikaback.png'),
  Item(id: '7', name: 'iPhone 14 Pro', category: 'Electronics', price: 3200000, description: 'Apple iPhone 14 Pro 256GB. Space Black. Brand new sealed box with full warranty.', image: 'assets/ss.png'),
  Item(id: '8', name: 'Samsung 4K TV 55"', category: 'Electronics', price: 1800000, description: '55 inch 4K Smart TV. HDR, built-in Netflix and YouTube. Wall mount included.', image: 'assets/ss1.png'),
  Item(id: '9', name: 'Makeup Kit - Pro', category: 'Makeup', price: 180000, description: 'Complete professional makeup kit. Includes foundation, eyeshadow, lipstick, brushes and more.', image: 'assets/ss2.png'),
  Item(id: '10', name: 'Perfume Set', category: 'Makeup', price: 95000, description: 'Luxury perfume gift set. 3 bottles of imported fragrances. Long lasting scent.', image: 'assets/uhomeback.png'),
  Item(id: '11', name: 'Ankara Dress', category: 'Fashion', price: 75000, description: 'Beautiful handmade Ankara dress. Available in all sizes. Custom orders welcome.', image: 'assets/barikaback.png'),
  Item(id: '12', name: 'Leather Handbag', category: 'Fashion', price: 220000, description: 'Genuine leather handbag. Spacious interior with multiple compartments. Available in 3 colors.', image: 'assets/ss.png'),
];
