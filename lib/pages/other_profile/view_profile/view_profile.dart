import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tricky/constant/font.dart';
import 'package:tricky/utils/contant_color/contant_color.dart';

class ViewProfile extends StatefulWidget {
  const ViewProfile({super.key});

  @override
  State<ViewProfile> createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.constColor,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () => Get.back(),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.constColor,
                ),
                child: const Icon(
                  Icons.arrow_back,
                  color: AppColors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            "assets/images/photo.png",
            width: screenWidth,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Sweety..."),
                    SizedBox(width: 10,),
                    Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primaryColor),
                      child: const Icon(
                        Icons.add,
                        color: AppColors.constColor,
                        size: 18,
                      ),
                    ),
                    const Spacer(),
                    Stack(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            "assets/images/photo.png",
                            height: 40,
                            width: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 5,
                          child: Container(
                            height: 8,
                            width: 8,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.primaryColor),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/india.png",
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primaryColor),
                        child: SvgPicture.asset(
                          "assets/icons/ring.svg",
                          height: 10,
                          width: 10,
                        )),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: AppColors.primaryColor),
                        child: Row(
                          children: [
                            Container(
                              height: 5,
                              width: 5,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.constColor),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Lv6",
                              style: FontConstant.styleRegular(
                                  fontSize: 13, color: AppColors.constColor),
                            ),
                          ],
                        )),
                    Spacer(),
                    SvgPicture.asset(
                      "assets/icons/call.svg",
                      height: 40,
                      width: 40,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
