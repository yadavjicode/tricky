import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tricky/constant/font.dart';
import 'package:tricky/utils/contant_color/contant_color.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: AppColors.constColor,
        title: Text(
          "Settings",
          style: FontConstant.styleRegular(fontSize: 22, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            content(
                "App Language",
                Row(
                  children: [
                    Text(
                      "Automatic",
                      style: FontConstant.styleRegular(
                          fontSize: 13, color: AppColors.darkgrey),
                    ),
                    back()
                  ],
                ),
                5),
            content("Blacklist", back(), 2),
            content("Privacy Policy", back(), 2),
            content("User Agreement", back(), 2),
            content("About Us", back(), 2),
            content("Rate Chamet", back(), 2),
            content(
                "Clear Cache",
                Row(
                  children: [
                    Text(
                      "46.6 M",
                      style: FontConstant.styleRegular(
                          fontSize: 13, color: AppColors.darkgrey),
                    ),
                    back()
                  ],
                ),
                2),
            content(
                "version",
                Text(
                  "New Version",
                  style: FontConstant.styleRegular(
                      fontSize: 13, color: AppColors.red),
                ),
                2),
            content("Customer Service", back(), 10),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              alignment: Alignment.center,
              color: AppColors.constColor,
              child: Text(
                "Log Out",
                style: FontConstant.styleRegular(
                    fontSize: 15, color: AppColors.black),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget content(String title, Widget widget, double hei) {
    return Container(
      color: AppColors.constColor,
      margin: EdgeInsets.only(bottom: hei),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
          ],
        ),
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
