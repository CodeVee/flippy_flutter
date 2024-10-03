class Category {
  final String imageAsset;
  final String name;
  const Category({
    required this.imageAsset,
    required this.name,
  });
}

const categories = [
  Category(imageAsset: 'assets/icons/supermarket.png', name: 'Grocery'),
  Category(imageAsset: 'assets/icons/beverage.png', name: 'Beverages'),
  Category(imageAsset: 'assets/icons/vegetable.png', name: 'Vegetables'),
  Category(imageAsset: 'assets/icons/fruit.png', name: 'Fruits'),
  Category(imageAsset: 'assets/icons/liqour.png', name: 'Liquor'),
  Category(imageAsset: 'assets/icons/cheese.png', name: 'Dairy'),
  Category(imageAsset: 'assets/icons/meat.png', name: 'Meat'),
  Category(imageAsset: 'assets/icons/drug.png', name: 'Pharmacy'),
  Category(imageAsset: 'assets/icons/ice-cream.png', name: 'Frozen Food'),
];
