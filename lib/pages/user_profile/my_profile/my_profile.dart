import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tricky/constant/font.dart';
import 'package:tricky/utils/contant_color/contant_color.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.constColor,
      appBar: AppBar(
        backgroundColor: AppColors.constColor,
        title: Text(
          "My Profile",
          style: FontConstant.styleRegular(fontSize: 22, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              content(
                  "My Avator",
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                        child: ClipOval(
                          child: Image.asset(
                            "assets/images/photo.png",
                          ),
                        ),
                      ),
                      back()
                    ],
                  )),
              content(
                  "ID",
                  Row(
                    children: [
                      Text(
                        "89279473",
                        style: FontConstant.styleRegular(
                            fontSize: 13, color: AppColors.darkgrey),
                      ),
                      SizedBox(width: 5),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 3),
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Text("Copy",
                            style: FontConstant.styleRegular(
                                fontSize: 13, color: AppColors.darkgrey)),
                      ),
                    ],
                  )),
              content(
                  "Nickname",
                  Row(
                    children: [
                      Text("user988372979",
                          style: FontConstant.styleMedium(
                              fontSize: 13, color: AppColors.darkgrey)),
                      back()
                    ],
                  )),
              content(
                  "Gender",
                  Text(
                    "Male",
                    style: FontConstant.styleRegular(
                        fontSize: 13, color: AppColors.darkgrey),
                  )),
              content(
                  "Age",
                  Row(
                    children: [
                      Text("22",
                          style: FontConstant.styleRegular(
                              fontSize: 13, color: AppColors.darkgrey)),
                      back()
                    ],
                  )),
              content(
                  "Region",
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/india.png",
                        height: 20,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text("India",
                          style: FontConstant.styleRegular(
                              fontSize: 13, color: AppColors.darkgrey)),
                    ],
                  )),
              content(
                  "Location",
                  Row(
                    children: [
                      Text("Delhi",
                          style: FontConstant.styleRegular(
                              fontSize: 13, color: AppColors.darkgrey)),
                      back()
                    ],
                  )),
              content(
                  "Language",
                  Row(
                    children: [
                      Text("English",
                          style: FontConstant.styleMedium(
                              fontSize: 13, color: AppColors.darkgrey)),
                      back()
                    ],
                  )),
              content("Second Language", back()),
              content("Tags", back()),
              content("Self-introduction", back()),
              const SizedBox(
                height: 20,
              ),
              content("Google", back()),
              content("Phone", back()),
              content("Gmail", back()),
            ],
          ),
        ),
      ),
    );
  }

  Widget content(String title, Widget widget) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: FontConstant.styleRegular(
                      fontSize: 15, color: AppColors.black),
                ),
              ),
              const Spacer(),
              widget,
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 1,
            color: Colors.grey.shade300,
          )
        ],
      ),
    );
  }

  Widget back() {
    return const Padding(
      padding: EdgeInsets.only(left: 8),
      child: Icon(
        Icons.arrow_forward_ios,
        size: 20,
        color: AppColors.grey,
      ),
    );
  }
}
