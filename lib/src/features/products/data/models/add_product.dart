import 'package:shopify_app/src/features/products/data/models/option_model.dart';
import 'package:shopify_app/src/features/products/data/models/product_variant.dart';

class AddProduct {
  final String title;
  final String description;
  final String category;
  final List<OptionModel> optionList;
  final List<ProductVariant> productVariantList; 

  AddProduct({
    required this.title,
    required this.description,
    required this.category,
    required this.optionList,
    required this.productVariantList,
  });

  factory AddProduct.fromJson(Map<String, dynamic> json) {
    return AddProduct(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      category: json['category'] ?? '',
      optionList: (json['optionList'] as List<dynamic>?)
              ?.map((e) => OptionModel.fromJson(e))
              .toList() ??
          [],
      productVariantList: (json['productVariantList'] as List<dynamic>?)
              ?.map((e) => ProductVariant.fromJson(e))
              .toList() ??
          [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'category': category,
      'optionList': optionList.map((e) => e.toMap()).toList(),
      'productVariantList': productVariantList.map((e) => e.toJson()).toList(),
    };
  }
}
