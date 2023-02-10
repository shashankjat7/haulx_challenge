import 'package:flutter/material.dart';
import 'package:haulx_challenge/Constants/custom_colors.dart';

class CustomDetailRow extends StatelessWidget {
  final String title;
  final String value;
  const CustomDetailRow({required this.title, required this.value, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: CustomColors.color2,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            color: CustomColors.color1,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
