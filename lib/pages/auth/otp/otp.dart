import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import '../../../constant/button_constant.dart';
import '../../../constant/color.dart';
import '../../../constant/font.dart';
import '../../../constant/size.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  OtpFieldController otpbox = OtpFieldController();
  @override
  Widget build(BuildContext context) {
     final double  screenWidth = MediaQuery.of(context).size.width;
 final double     screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFFFF1FF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF1FF),
        title: Text(
          "OTP Verification",
          style:
              FontConstant.styleRegular(fontSize: 22, color: AppColors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Text(
                "Please enter verification code send to your mobile number ending with  (+91-32******81)",
                style: FontConstant.styleRegular(
                    fontSize: 15, color: AppColors.black),
              ),
              SizedBox(
                height: screenHeight*0.2
              ),
              OTPTextField(
                otpFieldStyle: OtpFieldStyle(
                    focusBorderColor: AppColors.primaryColor,
                    // enabledBorderColor: AppColors.primaryColor,

                    backgroundColor: AppColors.constColor),
                outlineBorderRadius: 5,
                controller: otpbox,
                length: 4,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 60,
                contentPadding: EdgeInsets.all(15),
                style: const TextStyle(fontSize: 17),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.box,
                onCompleted: (pin) {
                  // otp = pin;
                  // print("Completed: $otp");
                },
              ),
              SizedBox(
                height: screenHeight*0.2
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "OTP not Received? ",
                    style: FontConstant.styleRegular(
                        fontSize: 17, color: AppColors.black),
                  ),
                  Text(
                    "Resend",
                    style: FontConstant.styleRegular(
                        fontSize: 17, color: AppColors.primaryColor),
                  )
                ],
              ),
              const SizedBox(height: 20),
              CustomButtonGra(
                text: "Confirm",
                radius: 10,
                padding: 13,
                onPressed: () {
                  Get.toNamed("/gender");
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
