import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zag_system_task1/core/routing/app_routs.dart';
import 'package:zag_system_task1/core/routing/routs.dart';

void main() {
  runApp(MyApp(appRouter: AppRouts()));
}

class MyApp extends StatelessWidget {
  final AppRouts appRouter;

  const MyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splashScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
