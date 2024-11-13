import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tricky/constant/font.dart';
import 'package:tricky/utils/contant_color/contant_color.dart';

class Moments extends StatefulWidget {
  const Moments({super.key});

  @override
  State<Moments> createState() => _MomentsState();
}

class _MomentsState extends State<Moments> {
  final List<Map<String, String>> data = [
    {'image': 'assets/images/imageA.png', 'like': '100'},
    {'image': 'assets/images/imageB.png', 'like': '100'},
    {'image': 'assets/images/imageC.png', 'like': '100'},
    {'image': 'assets/images/imageC.png', 'like': '100'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.constColor,
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Two items per row
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 8.0,
      
          childAspectRatio: 4 / 5, // Adjust to change item height/width ratio
        ),
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Card(
                margin: const EdgeInsets.all(0),
                child: ClipRRect(
                  child: Image.asset(
                    data[index]['image']??"",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  right: 8,
                  top: 5,
                  child: SvgPicture.asset("assets/icons/video.svg",height: 22,)),
              Positioned(
                  left: 5,
                  bottom: 5,
                  child: Row(
                    children: [
                       SvgPicture.asset("assets/icons/like.svg",),
                       const SizedBox(width: 2,),
                       Text(
                        data[index]['like']??"",
                      
                        style: FontConstant.styleMedium(fontSize: 13, color: AppColors.constColor),
                       )
                    ],
                    
                     ))
            ],
          );
        },
      ),
    );
  }
}
