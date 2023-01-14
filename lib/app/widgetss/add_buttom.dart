import 'package:flutter/material.dart';

import '../utils/constans/colors/app_colors.dart';
import '../utils/constans/styles/app_text_styles.dart';

class RemoveButtom extends StatelessWidget {
  const RemoveButtom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.blue,
      ),
      child: const Center(
        child: Text('+', style: AppTextStyles.white110h065),
      ),
    );
  }
}