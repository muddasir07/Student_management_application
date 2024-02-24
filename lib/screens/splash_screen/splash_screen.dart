import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:school_master/screens/login_screen/login_screen.dart';
import 'package:school_master/services/images.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  //route name for our screen
  static String routeName = 'SplashScreen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, LoginScreen.routeName, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: SvgPicture.asset(
              DefaultImages.splash,
              height: 20.h,
              width: 40.w,
             // ignore: deprecated_member_use
             color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Welcome To',
                        style: Theme.of(context).textTheme.bodyLarge),
                    Text('Digital School',
                        style: Theme.of(context).textTheme.headlineSmall),
                  ],
                ),
           
              ],
            ),
          ),
        ],
      ),
    );
  }
}
