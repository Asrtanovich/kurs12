import 'package:flash_chat/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "AppLication",
      initialBinding: AppPages.INITTAL,
      getPages: AppPages.routes,
    ),
  );
}
