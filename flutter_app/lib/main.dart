import 'package:flutter/material.dart';
import 'package:flutter_app/feauture/home_screen/presentation/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
              centerTitle: true,
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.white,
              shadowColor: Colors.white,
              actionsIconTheme: const IconThemeData(color: Colors.black),
              titleTextStyle: TextStyle(
                fontFamily: 'Poppins-regular',
                fontSize: 16.sp,
                color: Colors.black,
              ),
            ),
            useMaterial3: true,
          ),
          home: child,
        );
      },
      designSize: const Size(375, 812),
      // designSize: const Size(360, 640),
      minTextAdapt: true,
      splitScreenMode: true,
      child: HomeScreen(),
    );
  }
}
