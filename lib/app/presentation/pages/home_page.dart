import 'package:counter/app/utils/constans/colors/app_colors.dart';
import 'package:counter/app/utils/constans/styles/app_text_styles.dart';
import 'package:counter/app/presentation/pages/second_page.dart';
import 'package:flutter/material.dart';

import '../../widgetss/remove_buttom.dart';
import '../../widgetss/add_buttom.dart';
import '../../widgetss/text_buttom.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int san = 0;
  // void countMinus() {
  // setState(() {
  // san--;
  // });
  // }
//
  // void countPlus() {
  // setState(() {
  // san++;
  // });
  // }

  void count(int sanber) {
    if (sanber == 9) {
      san--;
    }
    if (sanber == 2) {
      san++;
    }
    setState(() {});
  }

  String word = 'Hello Kandaysin?';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColors.white,
        title: const Text(
          'Counter App  ',
          style: AppTextStyles.black25,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(san: san),
                  ),
                );
              },
              child: TextButtom(san: san),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          TextButtom(san: san),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => count(2),
                child: RemoveButtom(),
              ),
              const SizedBox(
                width: 30,
              ),
              TextButton(
                onPressed: () => count(9),
                child: AddButtom(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
