import 'package:flutter/material.dart';
import 'package:school_master/screens/splash_screen/splash_screen.dart';
import 'package:school_master/services/routes.dart';
import 'package:school_master/services/theme.dart';
import 'package:sizer/sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return Sizer(builder: (context, orientation, device){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'School Brain',
        theme: CustomTheme().baseTheme,
        initialRoute: SplashScreen.routeName,
        routes: routes,
      );
    });
  }
}
