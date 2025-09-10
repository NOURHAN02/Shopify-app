import 'package:shopify_app/src/features/products/data/models/option_model.dart';
import 'package:shopify_app/src/features/products/data/models/product_variant.dart';

class ProductRepo {
  List<ProductVariant> generateVariants(List<OptionModel> options) {
    if (options.isEmpty) return [];

    List<ProductVariant> result = [ProductVariant(options: {})];

    for (var option in options) {
      List<ProductVariant> temp = [];
      for (var variant in result) {
        for (var value in option.optionValue) {
          temp.add(
            ProductVariant(
              options: {...variant.options, option.optionName: value},
            ),
          );
        }
      }
      result = temp;
    }

    return result;
  }

Map<String, List<ProductVariant>> groupByOption(
    List<ProductVariant> items, String optionKey) {
  Map<String, List<ProductVariant>> grouped = {};

  for (var item in items) {
    final key = item.options[optionKey] ?? "Unknown";
    if (!grouped.containsKey(key)) grouped[key] = [];
    grouped[key]!.add(item);
  }

  return grouped;
}


}
