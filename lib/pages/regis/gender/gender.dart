import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../constant/button_constant.dart';
import '../../../constant/color.dart';
import '../../../constant/font.dart';
import '../../../constant/size.dart';

class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  bool male = false;
  bool female = false;

  void toggleColorMale() {
    setState(() {
      male = !male;
      if (female) {
        female = false;
      }
    });
  }

  void toggleColorFemale() {
    setState(() {
      female = !female;
      if (male) {
        male = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
     final double  screenWidth = MediaQuery.of(context).size.width;
 final double     screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFFFF1FF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF1FF),
        title: Text(
          "Select Gender",
          style:
              FontConstant.styleRegular(fontSize: 22, color:Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          children: [
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    toggleColorMale();
                  },
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.bottomCenter,
                        padding:
                            const EdgeInsets.only(top: 35, left: 20, right: 20),
                        decoration: BoxDecoration(
                            color: AppColors.constColor,
                            border: Border.all(
                                color: male
                                    ? AppColors.primaryColor
                                    : AppColors.darkblue),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15))),
                        child: Image.asset(
                          "assets/images/male.png",
                          height: screenWidth*0.2,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Male",
                        style: FontConstant.styleMedium(
                            fontSize: 18,
                            color: male
                                ? AppColors.primaryColor
                                : AppColors.darkblue),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    toggleColorFemale();
                  },
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.bottomCenter,
                        padding:
                            const EdgeInsets.only(top: 20, left: 5, right: 6),
                        decoration: BoxDecoration(
                            color: AppColors.constColor,
                            border: Border.all(
                                color: female
                                    ? AppColors.primaryColor
                                    : AppColors.darkblue),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15))),
                        child: Image.asset(
                          "assets/images/female.png",
                          height: screenWidth*0.24,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Female",
                        style: FontConstant.styleMedium(
                            fontSize: 18,
                            color: female
                                ? AppColors.primaryColor
                                : AppColors.darkblue),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            CustomButtonGra(
              text: "Confirm",
              radius: 10,
              padding: 13,
              onPressed: () {
                Get.toNamed("/dob");
              },
              gradient: const LinearGradient(
                colors: [Color(0xFF995CD1), Color(0xFFE33EDA)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              textStyle: FontConstant.styleSemiBold(
                  fontSize: 17, color: AppColors.constColor),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: Text(
                "(Gender cannot be change after setting)",
                style: FontConstant.styleRegular(
                    fontSize: 13, color: AppColors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
