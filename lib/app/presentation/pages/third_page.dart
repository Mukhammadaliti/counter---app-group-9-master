import 'package:counter/app/utils/constans/colors/app_colors.dart';
import 'package:counter/app/utils/constans/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage(this.number);
  final String number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page ====> $number'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(
              context,
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color:  AppColors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            width: 345,
            height: 44,
            child: Center(
              child: Text(
                'Uchunchu bettin Sany: $number ',
                style: AppTextStyles.black18w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
