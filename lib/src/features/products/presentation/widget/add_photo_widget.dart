import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shopify_app/src/core/utils/colors.dart';
import 'package:shopify_app/src/features/products/presentation/manager/product_bloc.dart';
import 'package:shopify_app/src/features/products/presentation/manager/product_states.dart';

class AddPhotoWidget extends StatelessWidget {
  const AddPhotoWidget({super.key, required this.option});
  final Map<String, dynamic> option;

  @override
  Widget build(BuildContext context) {
    final productBloc = context.read<ProductBloc>();

    return InkWell(
      onTap: () async {
        final picker = ImagePicker();
        final pickedFile = await picker.pickImage(source: ImageSource.gallery);
        if (pickedFile != null) {
          option['image'] = pickedFile.path;
          productBloc.emit(AddOptionState());
        }
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: ColorsApp.iconThemeColor.withOpacity(0.3)),
        ),
        child: option['image'] != null && option['image'] != ''
            ? Image.file(
                File(option['image']),
                fit: BoxFit.cover,
              )
            : const Icon(
                Icons.add_a_photo_outlined,
                color: ColorsApp.kBlueColor,
                size: 27,
              ),
      ),
    );
  }
}
