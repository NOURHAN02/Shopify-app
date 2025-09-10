
import 'package:flutter/material.dart';

class InfoVariantTableItem extends StatelessWidget {
  const InfoVariantTableItem({super.key, required this.groupList});
  final Map<String, dynamic> groupList;

  @override
  Widget build(BuildContext context) {
    final firstKey = groupList.keys.first;
    final value = groupList[firstKey];
    final count = groupList['count'];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$value"),
        Row(
          children: [
            Text("$count variants"),
            const Icon(Icons.arrow_drop_down_sharp, size: 28),
          ],
        ),
      ],
    );
  }
}
