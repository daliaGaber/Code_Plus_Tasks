void main() {

  // 2. Create a List of Products
  List<Product> products = [
    Product(id: 1, name: "Laptop", price: 25000.0, category: "Electronics", isAvailable: true),
    Product(id: 2, name: "Phone", price: 15000.0, category: "Electronics", isAvailable: false),
    Product(id: 3, name: "Book", price: 200.0, category: "Education", isAvailable: true),
    Product(id: 4, name: "Pizza", price: 150.0, category: "Food", isAvailable: true),
    Product(id: 5, name: "Headphones", price: 50.0, category: "Electronics", isAvailable: false),
  ];

  // 1. Filter Available Products
  var availableProducts = products.where((p) => p.isAvailable == true).toList();
  print("Available Products:");
  for (var p in availableProducts) {
    print(p.name);
  }


  // 2. Extract Product Names
  var productNames = products.map((p) => p.name).toList();
  print("Product Names: $productNames");


  // 3. Get Available Electronics Products
  var availableElectronics = products
      .where((p) => p.isAvailable && p.category == "Electronics")
      .map((p) => p.name)
      .toList();
  print("Available Electronics: $availableElectronics");


  // 4. Calculate Total Price
  var totalPrice = products.fold(0.0, (sum, p) => sum + p.price);
  print("Total Price: $totalPrice");


  // 5. Calculate Available Products Total
  var totalAvailablePrice = products
      .where((p) => p.isAvailable)
      .fold(0.0, (sum, p) => sum + p.price);
  print("Total Available Price: $totalAvailablePrice");


  // 6. Check Product Availability
  var hasExpensiveProduct = products.any((p) => p.price > 20000);
  print("Is there any product > 20000? $hasExpensiveProduct");


  // 7. Validate Products
  var allAbove100 = products.every((p) => p.price > 100);
  print("Are all products > 100? $allAbove100");


  // 8. Find a Product
  var firstElectronics = products.firstWhere((p) => p.category == "Electronics");
  print("First Electronics Product: ${firstElectronics.name}");


  // 9. Sort Products
  products.sort((a, b) => a.price.compareTo(b.price));
  print("Products sorted by price (cheapest to expensive):");
  for (var p in products) {
    print("${p.name} - ${p.price}");
  }


  // 10. Remove Duplicate Categories
  List<String> categories = [
    "Electronics",
    "Education",
    "Electronics",
    "Food"
  ];
  
  Set<String> uniqueCategories = categories.toSet();
  print("Unique Categories: $uniqueCategories");
}


// 1. Create a Product class
class Product {
  int id;
  String name;
  double price;
  String category;
  bool isAvailable;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.category,
    required this.isAvailable,
  });
}