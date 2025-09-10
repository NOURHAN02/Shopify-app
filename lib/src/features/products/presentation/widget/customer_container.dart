import 'package:flutter/material.dart';

class CustomerContainerWidget extends StatelessWidget {
  const CustomerContainerWidget({
    super.key,
    required this.child,
    this.paddingNum,
  });
  final Widget child;
  final double? paddingNum;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(paddingNum ?? 15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.white12, width: 2),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            spreadRadius: 3,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: child,
    );
  }
}
