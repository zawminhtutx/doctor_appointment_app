import 'package:doctor_appointment_app/screens/auth_page.dart';
import 'package:doctor_appointment_app/utils/main_layout.dart';
import 'package:flutter/material.dart';
import 'utils/config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //this is for push navigator
  static final navigatorKey = GlobalKey<NavigatorState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Doctor Appointment App',
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
            focusColor: Config.primaryColor,
            border: Config.focusBorder,
            focusedBorder: Config.focusBorder,
            errorBorder: Config.errorBorder,
            enabledBorder: Config.outlineInputBorder,
            floatingLabelStyle: TextStyle(color: Config.primaryColor),
            prefixIconColor: Colors.black38),
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Config.primaryColor,
          selectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          elevation: 10,
          type: BottomNavigationBarType.fixed,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        //this is initial route of the app
        //which is auth page (login and signup)
        '/': (context) => const AuthPage(),
        //this is for main layout after login
        'main': (context) => const MainLayout(),
      },
    );
  }
}
