import 'dart:convert';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_app/src/core/utils/enums.dart';
import 'package:shopify_app/src/features/products/data/models/add_product.dart';
import 'package:shopify_app/src/features/products/data/models/option_model.dart';
import 'package:shopify_app/src/features/products/data/models/product_variant.dart';
import 'package:shopify_app/src/features/products/data/repo/product_repo.dart';
import 'package:shopify_app/src/features/products/presentation/manager/product_states.dart';

class ProductBloc extends Cubit<ProductStates> {
  ProductBloc() : super(InitialState());

  Map<String, String> fields = {
    InfoProductEnum.title.name: "",
    InfoProductEnum.description.name: "",
    InfoProductEnum.category.name: "",
    InfoProductEnum.optionName.name: "",
  };
  final List<Map<String, dynamic>> groupedList = [];
  List<OptionModel> optionsList = [];
  List<ProductVariant> variant = [];

  void setField(String key, String value) {
    fields[key] = value;
    emit(AddInfoState());
  }

  String? getField(String key) {
    return fields[key];
  }

  void addOption() {
    optionsList.add(OptionModel(optionName: "", optionValue: []));
    emit(AddOptionState());
  }

  void removeOption(int index) {
    optionsList.removeAt(index);
    emit(RemoveOptionState());
  }

  void addValueToOptionList(int optionIndex, List<String> value) {
    optionsList[optionIndex].optionValue = value;
    emit(AddOptionState());
  }

  void addnameToOption(int optionIndex, String value) {
    optionsList[optionIndex].optionName = value;
    emit(AddOptionState());
  }

  void saveOption(int index) {
    final option = optionsList[index];
    option.isSave = true;
    fetchVariantTable();

    emit(SaveOptionState());
  }

  void sendData() {
    AddProduct addProduct = AddProduct(
      title: getField(InfoProductEnum.title.name) ?? "",
      description: getField(InfoProductEnum.description.name) ?? "",
      category: getField(InfoProductEnum.category.name) ?? "",
      optionList: optionsList,
      productVariantList: variant,
    );
    String jsonString = jsonEncode(addProduct.toJson());

    // اطبع النتيجة
    log("AddProduct JSON: $jsonString");
  }

  void fetchVariantTable() {
    final repo = ProductRepo();
    variant = repo.generateVariants(optionsList);

    groupedList.clear();

    final firstOptionName =
        optionsList.isNotEmpty ? optionsList[0].optionName : null;

    if (firstOptionName != null) {
      final groupedByFirstOption = repo.groupByOption(variant, firstOptionName);

      groupedByFirstOption.forEach((key, list) {
        groupedList.add({
          firstOptionName: key,
          "count": list.length,
          "items": list.map((v) => v.toJson()).toList(),
        });
      });
    }
  }
}
