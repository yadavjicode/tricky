import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../constant/button_constant.dart';
import '../../../constant/color.dart';
import '../../../constant/font.dart';
import '../../../constant/size.dart';


class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
   
  @override
  Widget build(BuildContext context) {
    final double  screenWidth = MediaQuery.of(context).size.width;
 final double     screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFFFF1FF),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFFFF1FF),
        title: Text(
          "Login",
          style:
              FontConstant.styleRegular(fontSize: 22, color: AppColors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: screenHeight*0.2
              ),
              Text(
                "Login With Mobile Number",
                style: FontConstant.styleRegular(
                    fontSize: 18, color: AppColors.black),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                textAlign: TextAlign.center,
                // maxLength: 10,

                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter your mobile no",
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23),
                    borderSide: const BorderSide(color: AppColors.primaryColor),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                ),
              ),
              SizedBox(
                height: screenHeight*0.25
              ),
              CustomButtonGra(
                text: "Send OTP",
                padding: 13,
                radius: 10,
                onPressed: () {
                  Get.toNamed("/otp");
                },
                gradient: const LinearGradient(
                  colors: [Color(0xFF995CD1), Color(0xFFE33EDA)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                textStyle: FontConstant.styleSemiBold(
                    fontSize: 17, color: AppColors.constColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
