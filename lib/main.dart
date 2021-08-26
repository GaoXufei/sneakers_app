import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sneakers_app/common/routes/app_pages.dart';

import 'common/utils/utils.dart';

void main() {
  runApp(MyApp());

  if (Platform.isAndroid) {
    // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812 - 44 - 34),
      builder: () => GetMaterialApp(
        // * 顶部debug标
        debugShowCheckedModeBanner: false,
        // * 主题
        theme: ThemeData(
          // 主题颜色
          primaryColor: Colors.white,
          // 页面背景颜色
          scaffoldBackgroundColor: Colors.white,
        ),
        // * 日志
        enableLog: true,
        logWriterCallback: Logger.write,
        // * 路由
        getPages: AppPages.routes,
        // * 启动页面
        // initialRoute: AppPages.INITIAL,
        initialRoute: "/application",
      ),
    );
  }
}
