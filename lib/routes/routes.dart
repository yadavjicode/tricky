import 'package:get/get.dart';
import 'package:tricky/pages/other_profile/profile_detail.dart';
import 'package:tricky/pages/other_profile/view_profile/view_profile.dart';
import 'package:tricky/pages/user_profile/my_profile/my_profile.dart';
import 'package:tricky/pages/user_profile/settings/setting.dart';
import '../../pages/auth/login/login.dart';
import '../../pages/auth/mobile/mobile.dart';
import '../../pages/auth/otp/otp.dart';
import '../../pages/dashboard/dashboard.dart';
import '../../pages/regis/dob/dob.dart';
import '../../pages/regis/gender/gender.dart';

class Routes {
  static final List<GetPage> routes = [
    GetPage(name: '/login', page: () => Login()),
    GetPage(name: '/otp', page: () => Otp()),
    GetPage(name: '/mobile', page: () => Mobile()),
    GetPage(name: '/gender', page: () => Gender()),
    GetPage(name: '/dob', page: () => DOB()),
    GetPage(name: '/home', page: () => Dashboard()),
    GetPage(name: '/profileDetail', page: () => ProfileDetail()),
    GetPage(name: '/viewProfile', page: () => ViewProfile()),
    GetPage(name: '/myProfile', page: () => MyProfile()),
    GetPage(name: '/setting', page: () => Setting()),
  ];
}
