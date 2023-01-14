import 'package:counter/app/utils/constans/colors/app_colors.dart';
import 'package:counter/app/utils/constans/styles/app_text_styles.dart';
import 'package:counter/app/presentation/pages/third_page.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final int? san;
  const SecondPage({this.san});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page '),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => ThirdPage(
                      san.toString(),
                    )),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            width: 345,
            height: 44,
            child: Center(
              child: Text(
                'San: $san',
                style: AppTextStyles.black18w500
              ),
            ),
          ),
        ),
      ),
    );
  }
}
