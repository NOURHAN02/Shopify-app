import 'package:flutter/material.dart';
import 'package:shopify_app/src/core/utils/colors.dart';
import 'package:shopify_app/src/core/utils/styles.dart';

class TitleAppBarWidget extends StatelessWidget {
  const TitleAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: ColorsApp.kLightSecondColor,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Row(
              spacing: 4,
              children: [
                const Icon(
                  Icons.search_outlined,
                  color: ColorsApp.kDrowerColor,
                ),
                Text(
                  "Search",
                  style: StylesApp.textStyle16B.copyWith(
                    color: ColorsApp.kDrowerColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.0),
          child: Icon(
            Icons.notifications_outlined,
            color: ColorsApp.kDrowerColor,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(7),
          decoration: BoxDecoration(
            color: ColorsApp.kContainerInfoColor,
            borderRadius: BorderRadius.circular(13),
          ),
          child: Text("MS", style: StylesApp.textStyle16B),
        ),
        const SizedBox(width: 5),
      ],
    );
  }
}
