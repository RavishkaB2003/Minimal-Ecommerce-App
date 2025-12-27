import 'package:hive/hive.dart'; // Add this import for Hive support

part 'products.g.dart'; // This is needed for Hive type adapter generation



@HiveType(typeId: 0) // Assign a unique typeId for the Products class
class Products {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final double price;
  @HiveField(4)
  final String imageUrl;

  Products({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}