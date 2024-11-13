import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tricky/constant/font.dart';
import 'package:tricky/pages/other_profile/info/info.dart';
import 'package:tricky/pages/other_profile/moments/moments.dart';
import 'package:tricky/utils/contant_color/contant_color.dart';

class ProfileDetail extends StatefulWidget {
  const ProfileDetail({super.key});

  @override
  State<ProfileDetail> createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  final List<Map<String, String>> data = [
    {'image': 'assets/images/imageA.png', 'like': '100'},
    {'image': 'assets/images/imageB.png', 'like': '100'},
    {'image': 'assets/images/imageC.png', 'like': '100'},
    {'image': 'assets/images/imageC.png', 'like': '100'},
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.constColor,
      body: SafeArea(
        child: Stack(children: [
          Column(
            children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed("/viewProfile");
                    },
                    child: Image.asset(
                      "assets/images/photo.png",
                      width: screenWidth,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: GestureDetector(
                      onTap: () => Get.back(),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black.withOpacity(0.4),
                        ),
                        child: const Icon(
                          Icons.arrow_back,
                          color: AppColors.constColor,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black.withOpacity(0.4),
                          ),
                          child: const Icon(
                            Icons.warning_amber,
                            color: AppColors.constColor,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black.withOpacity(0.4),
                          ),
                          child: const Icon(
                            Icons.more_horiz,
                            color: AppColors.constColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      left: 10,
                      bottom: 10,
                      child: SizedBox(
                        height: 60,
                        width: screenWidth * 1,
                        child: ListView.builder(
                          itemCount: data.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            bool isLastItem = index == data.length - 1;

                            return Container(
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              margin: const EdgeInsets.symmetric(horizontal: 2),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset(
                                    data[index]["image"] ?? "",
                                    height: 60,
                                  ),
                                  Positioned(
                                    child: Center(
                                      child: isLastItem
                                          ? const Icon(
                                              Icons.arrow_forward_ios,
                                              color: AppColors.constColor,
                                            )
                                          : SvgPicture.asset(
                                              "assets/icons/video.svg"),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ))
                ],
              ),
              TabBar(
                controller: tabController,
                labelStyle: FontConstant.styleSemiBold(
                    fontSize: 17, color: AppColors.black),
                dividerColor: AppColors.constColor,
                tabs: const [
                  Tab(
                    text: 'Info',
                  ),
                  Tab(text: 'Moments'),
                  Tab(
                    text: "",
                  )
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: const [
                    Info(), // First tab content
                    Moments(), // Placeholder for the second tab content
                    SizedBox.shrink()
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                color: AppColors.constColor.withOpacity(0.8),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                       
                        padding: EdgeInsets.symmetric(vertical: 15),
                        margin:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: AppColors.constColor,
                            border: Border.all(color: AppColors.primaryColor),
                            borderRadius: BorderRadius.all(Radius.circular(25))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.message_outlined,
                              color: AppColors.primaryColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Message",
                              style: FontConstant.styleSemiBold(
                                  fontSize: 13, color: AppColors.primaryColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        margin:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            border: Border.all(color: AppColors.primaryColor),
                            borderRadius: BorderRadius.all(Radius.circular(25))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.call,
                              color: AppColors.constColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Video Call",
                                style: FontConstant.styleSemiBold(
                                    fontSize: 13, color: AppColors.constColor)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}
