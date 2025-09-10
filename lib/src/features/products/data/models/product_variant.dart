
class ProductVariant {
  Map<String, String> options;
  double price;
  bool available;
  String image;

  ProductVariant({
    required this.options,
    this.price = 0,
    this.available = true,
    this.image = '',
  });

  // تحويل للكائن إلى Map (JSON)
  Map<String, dynamic> toJson() => {
        'options': options,
        'price': price,
        'available': available,
        'image': image,
      };

  // إنشاء الكائن من Map (JSON)
  factory ProductVariant.fromJson(Map<String, dynamic> json) {
    return ProductVariant(
      options: Map<String, String>.from(json['options'] ?? {}),
      price: (json['price'] ?? 0).toDouble(),
      available: json['available'] ?? true,
      image: json['image'] ?? '',
    );
  }
}
