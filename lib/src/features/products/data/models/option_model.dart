class OptionModel {
   String optionName;
   List<String> optionValue;
   bool  isSave;

  OptionModel({
    required this.optionName,
    required this.optionValue,
    this.isSave=false,
  });

  factory OptionModel.fromJson(Map<String, dynamic> json) {
    return OptionModel(
      optionName: json['optionName'] ?? '',
      optionValue: (json['optionValue'] as List<dynamic>?)
              ?.map((e) => e.toString())
              .toList() ??
          [],
    );
  }


  Map<String, dynamic> toMap() {
    return {
      'optionName': optionName,
      'optionValue': optionValue,
    };
  }
  bool containsValue(String value) {
    return optionValue.any((controller) => controller.trim() == value.trim());
  }
}