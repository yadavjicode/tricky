import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tricky/constant/font.dart';
import 'package:tricky/utils/contant_color/contant_color.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.constColor,
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ClipOval(
                      child: Image.asset(
                    "assets/images/photo.png",
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  )),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    padding: EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                        color: AppColors.primaryColor),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/party.svg"),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          "Party",
                          style: FontConstant.styleRegular(
                              fontSize: 13, color: AppColors.constColor),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                        color: AppColors.primaryColor),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/ring.svg"),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          "23",
                          style: FontConstant.styleRegular(
                              fontSize: 13, color: AppColors.constColor),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade300,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: AppColors.black,
                    ),
                  )
                ],
              ),
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Hey Guys... Support me pls",
                    style: FontConstant.styleRegular(
                        fontSize: 13, color: AppColors.black),
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/docu.svg",
                    width: 18,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                        color: Colors.grey.withOpacity(0.2)),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/india.png",
                          height: 20,
                          width: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("India")
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                        color: Colors.grey.withOpacity(0.2)),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/lang.svg",
                          height: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("English")
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 33,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(13)),
                        color: Colors.grey.withOpacity(0.2)),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/location.svg",
                          height: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("IND. Delhi")
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/heart.svg",
                    width: 18,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(13)),
                        color: Colors.grey.withOpacity(0.2)),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/it.svg",
                          height: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("IT")
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(13)),
                        color: Colors.grey.withOpacity(0.2)),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/dancing.svg",
                          height: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("Dancing")
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(13)),
                        color: Colors.grey.withOpacity(0.2)),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/peacock.svg",
                          height: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("Peacock")
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Honor",
                    style: FontConstant.styleSemiBold(
                        fontSize: 17, color: AppColors.black),
                  )),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: Color(0xffEECF64).withOpacity(0.3),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/level.png",
                            width: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Level",
                                style: FontConstant.styleMedium(
                                    fontSize: 13, color: AppColors.black),
                              ),
                              Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 4, vertical: 2),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: AppColors.primaryColor,
                                  ),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset("assets/icons/star.svg"),
                                      Text("Lv6",
                                          style: FontConstant.styleRegular(
                                              fontSize: 13,
                                              color: AppColors.constColor)),
                                    ],
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: Color(0xffF138DC).withOpacity(0.3),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/award.png",
                            width: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Event",
                                  style: FontConstant.styleMedium(
                                      fontSize: 13, color: AppColors.black),
                                ),
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 4, vertical: 2),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: AppColors.primaryColor,
                                    ),
                                    child: Text("-New Delhi",
                                        style: FontConstant.styleRegular(
                                            fontSize: 13,
                                            color: AppColors.constColor)))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: Color(0xffFEE9C3).withOpacity(0.5),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/fan.png",
                            width: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Top Fans",
                                  style: FontConstant.styleMedium(
                                      fontSize: 13, color: AppColors.black),
                                ),
                                Text("surta24464",
                                    style: FontConstant.styleRegular(
                                        fontSize: 13, color: AppColors.grey))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(child: Container())
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: screenWidth,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: SvgPicture.asset(
                            "assets/icons/giftsent.svg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Text(
                                "Gifts Sent >",
                                style: FontConstant.styleBold(
                                    fontSize: 17,
                                    color: AppColors.red.withOpacity(0.7)),
                              ),
                            ),
                            Image.asset(
                              "assets/images/sentgift.png",
                              height: screenWidth * 0.13,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(13),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: AppColors.constColor,
                        ),
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                giftSent(),
                                giftSent(),
                                giftSent(),
                                giftSent()
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                giftSent(),
                                giftSent(),
                                giftSent(),
                                giftSent()
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Stack(
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: screenWidth,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: SvgPicture.asset(
                            "assets/icons/giftsent.svg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Text(
                                "Gifts Received >",
                                style: FontConstant.styleBold(
                                    fontSize: 17,
                                    color: AppColors.red.withOpacity(0.7)),
                              ),
                            ),
                            Image.asset(
                              "assets/images/level.png",
                              height: screenWidth * 0.13,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(13),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: AppColors.constColor,
                        ),
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                giftSent(),
                                giftSent(),
                                giftSent(),
                                giftSent()
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                giftSent(),
                                giftSent(),
                                giftSent(),
                                giftSent()
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: screenWidth,
                        height: 170,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: SvgPicture.asset(
                            "assets/icons/giftsent.svg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Text(
                                "Gallary",
                                style: FontConstant.styleBold(
                                    fontSize: 17,
                                    color: AppColors.red.withOpacity(0.7)),
                              ),
                            ),
                            Image.asset(
                              "assets/images/gallary.png",
                              height: screenWidth * 0.13,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(13),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: AppColors.constColor,
                        ),
                        margin: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            gallary(),
                            gallary(),
                            gallary(),
                            gallary()
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Groups",
                  style: FontConstant.styleSemiBold(
                      fontSize: 17, color: AppColors.black),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff8836F),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/group.png",
                        height: 50,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                color: AppColors.darkblue,
                              ),
                              Text(
                                "Her Family Group",
                                style: FontConstant.styleRegular(
                                    fontSize: 13, color: AppColors.darkblue),
                              ),
                            ],
                          ),
                          Text(
                            " Lucky Charms (290)",
                            style: FontConstant.styleRegular(
                                fontSize: 13, color: AppColors.darkblue),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Score 4.0",
                  style: FontConstant.styleSemiBold(
                      fontSize: 17, color: AppColors.black),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: data(
                        "Good attitude 19",
                      )),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(child: data("Hilarious 18")),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(child: data("GSuperstar 17")),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: data(
                        "Dream girl 16",
                      )),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(child: data("Talented 16")),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(child: data("Nice voice 15")),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Remark",
                  style: FontConstant.styleSemiBold(
                      fontSize: 17, color: AppColors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget giftSent() {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(0.3),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            children: [
              Image.asset(
                "assets/images/Rose.png",
                height: screenHeight * 0.05,
              ),
              Text(
                "X4",
                style: FontConstant.styleRegular(
                    fontSize: 13, color: AppColors.black),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget gallary() {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Image.asset(
      "assets/images/bangle.png",
      height: screenHeight * 0.08,
    );
  }

  Widget data(String data) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(13)),
          color: Colors.grey.withOpacity(0.2)),
      child: Text(
        data,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
