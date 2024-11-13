import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constant/color.dart';
import '../../../constant/font.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
  @override
  Widget build(BuildContext context) {
  final double  screenWidth = MediaQuery.of(context).size.width;
 final double     screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/background.png",
            width: double.infinity, // Take up the full width
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight*0.15,
                ),
                Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/tricky.png",
                      width: screenWidth*0.7,
                    )),
                SizedBox(
                  height: screenHeight*0.3,
                ),
                GestureDetector(
                  onTap: () {
                    
                    // Get.toNamed("/mobile");
                  },
                  child: loginButton("   Login / Sign Up", "assets/images/lock.png")),
                loginButton(
                    "Continue with Google ", "assets/images/google.png"),
                
                GestureDetector(
                  onTap: () {
                    
                    Get.toNamed("/mobile");
                  },
                  child: loginButton(
                      "Continue with Mobile ", "assets/images/mobile.png"),
                ),
                const Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/tick.png",
                      height: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Text(
                      "Agree to User-Agreement & Privacy-Policy and confirm I’m over 18+",
                      style: FontConstant.styleRegular(
                          fontSize: 13, color: AppColors.constColor),
                    ))
                  ],
                ),
                SizedBox(
                  height: screenHeight*0.05
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget loginButton(String tittle, String imagePath) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
        top: 15,
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
          color: AppColors.constColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 50),
          Image.asset(
            imagePath,
            height: 20,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(tittle,
                style: FontConstant.styleMedium(
                    fontSize: 18, color: AppColors.black)),
          ),
        ],
      ),
    );
  }
}
