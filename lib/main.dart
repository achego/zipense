import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/components/dismiss_keyboard.dart';
import 'core/utils/app_styles.dart';
import 'routes/pages.dart';

void main() {
  runApp(const MyApp());
}

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DismissKeyBoard(
      child: GetMaterialApp(
        initialRoute: Routes.initialRoute,
        navigatorObservers: [routeObserver],
        getPages: AppPages.pages,
        theme: ThemeData(
          primaryColor: AppColors.primaryColor,
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Inter',
        ),
        darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
