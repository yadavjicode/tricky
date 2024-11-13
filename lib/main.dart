import 'package:flutter/material.dart';
import 'package:tricky/pages/dashboard/dashboard.dart';
import 'package:get/get.dart';
import 'package:tricky/routes/routes.dart';

import 'utils/size/size.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
   // SizeConfig().init(context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Dashboard(),
      initialRoute: '/login',
      getPages: Routes.routes,
    );
  }
}