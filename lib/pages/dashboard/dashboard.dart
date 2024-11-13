import 'package:flutter/material.dart';
import '../../constant/bottombar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
      body: SafeArea(
        
     child:  BottomBar(),
      ),
    );
  }
}
