
import 'package:flutter/cupertino.dart';
import 'package:school_master/screens/assignment_screen/assignment_screen.dart';
import 'package:school_master/screens/attendance/attendance.dart';
import 'package:school_master/screens/datesheet_screen/datesheet_screen.dart';
import 'package:school_master/screens/fee_screen/fee_screen.dart';
import 'package:school_master/screens/home_screen/home_screen.dart';
import 'package:school_master/screens/login_screen/login_screen.dart';
import 'package:school_master/screens/my_profile/my_profile.dart';
import 'package:school_master/screens/splash_screen/splash_screen.dart';


Map<String, WidgetBuilder> routes = {
  //all screens will be registered here like manifest in android
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  MyProfileScreen.routeName: (context) => const MyProfileScreen(),
  FeeScreen.routeName: (context) => const FeeScreen(),
  AssignmentScreen.routeName: (context) => const AssignmentScreen(),
  DateSheetScreen.routeName: (context) => const DateSheetScreen(),
  AttendanceScreen.routeName: (context) => const AttendanceScreen(),
};
