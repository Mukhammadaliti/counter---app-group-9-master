import 'package:counter/app/utils/constans/colors/app_colors.dart';
import 'package:flutter/material.dart';

import '../utils/constans/styles/app_text_styles.dart';

class TextButtom extends StatelessWidget {
  const TextButtom({
    Key? key,
    required this.san,
  }) : super(key: key);

  final int san;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      width: 345,
      height: 44,
      child: Center(
        child: Text('San: $san ', style: AppTextStyles.black18w500),
      ),
    );
  }
}