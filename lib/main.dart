import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'Screen/HomeScreen/view/home_view.dart';
import 'Screen/SlockScreen/view/slock_view.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        getPages: [
          GetPage(
            name: '/',
            page: () => HomeScreen(),
          ),
          GetPage(
            name: '/slockscreen',
            page: () => SlockScreen(),
          ),
        ],
      ),
    ),
  );
}
