import 'package:flutter/material.dart';
import 'package:school_master/screens/splash_screen/splash_screen.dart';
import 'package:school_master/services/routes.dart';
import 'package:school_master/services/theme.dart';
import 'package:sizer/sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //it requires 3 parameters
    //context, orientation, device
    //it always requires, see plugin documentation
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
