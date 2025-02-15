import 'package:flutter/material.dart';
import 'package:food_delivery_app/controller_binder.dart';
import 'package:food_delivery_app/main.dart';
import 'package:food_delivery_app/ui/screens/auth/on_boading_screen1.dart';
import 'package:food_delivery_app/ui/screens/auth/sign_in_screen.dart';
import 'package:food_delivery_app/ui/utils/colors.dart';
import 'package:get/get.dart';

class FoodGrid extends StatelessWidget {
  const FoodGrid({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Grid Food UI',
      debugShowCheckedModeBanner: false,
      initialBinding: ControllerBinder(),
      darkTheme: ThemeData.dark(),
      navigatorKey: navigatorKey,
      routes: {
        '/signin_screen':(context)=> const SignInScreen()
      },
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            // backgroundColor:  Color.fromARGB(255, 14, 13, 13),
            ),
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            color: AppColor.whiteColorFFF,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          titleLarge: TextStyle(
            color: AppColor.whiteColorFFF,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          bodyLarge: TextStyle(
            color: AppColor.whiteColorFFF,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        scaffoldBackgroundColor: Colors.black26,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            padding:
                const MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.zero),
            textStyle: const MaterialStatePropertyAll<TextStyle>(TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColor.blackColor2)),
            shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9),
              ),
            ),
            backgroundColor:
                const MaterialStatePropertyAll<Color>(AppColor.primaryColor),
            fixedSize: const MaterialStatePropertyAll<Size>(
              Size(130, 45),
            ),
          ),
        ),
        useMaterial3: true,
      ),
      home: const OnBoadingScreen1(),
    );
  }
}
