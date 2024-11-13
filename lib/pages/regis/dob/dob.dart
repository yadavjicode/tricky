import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_linear_datepicker/flutter_datepicker.dart';
import 'package:get/get.dart';
import '../../../constant/button_constant.dart';
import '../../../constant/color.dart';
import '../../../constant/font.dart';

class DOB extends StatefulWidget {
  const DOB({super.key});

  @override
  State<DOB> createState() => _DOBState();
}

class _DOBState extends State<DOB> {
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
                  height: screenHeight*0.05
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.offAndToNamed("/gender");
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: AppColors.constColor,
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Text(
                      "My Birthday",
                      style: FontConstant.styleMedium(
                          fontSize: 22, color: AppColors.constColor),
                    ),
                    const SizedBox(
                      width: 45,
                    ),
                  ],
                ),
                Spacer(),
                LinearDatePicker(
                  // startDate: "1900/12/12",
                  // endDate: "2000/01/14",
                  initialDate: "1397/05/05",
                  addLeadingZero: true,
                  dateChangeListener: (String selectedDate) {
                    print(selectedDate);
                  },
                  showDay: true,
                  labelStyle: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                  selectedRowStyle: const TextStyle(
                    fontSize: 18.0,
                    color: Colors.deepOrange,
                  ),
                  unselectedRowStyle: const TextStyle(
                    fontSize: 16.0,
                    color: AppColors.constColor,
                  ),
                  yearText: "year",
                  monthText: "month",
                  dayText: "day",
                  showLabels: false,
                  columnWidth: 100,
                  showMonthName: false,
                  isJalaali: false,
                ),
                // ElevatedButton(
                //   child: Text(
                //     "Pick Date | انتخاب تاریخ",
                //   ),
                //   onPressed: () {
                //     // showDateDialog(context);
                //   },
                // ),
                Spacer(),
                CustomButton(
                text: "Confirm",
                radius: 10,
                padding: 13,
                onPressed: () {
                  Get.toNamed("/home");
                },
                color: AppColors.constColor,
                textStyle: FontConstant.styleMedium(
                    fontSize: 17, color: AppColors.black),
              ),
              Padding(
              padding: EdgeInsets.only(top: 10, bottom: 20),
              child: Text("Not permitted under the age of 18",style: FontConstant.styleRegular(fontSize: 13, color: AppColors.constColor),),
            )
              ],
            ),
          )
        ],
      ),
    );
  }
}
