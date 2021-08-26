import 'package:get/get.dart';
import 'package:sneakers_app/pages/application/index.dart';

part 'app_routes.dart';

class AppPages {
  // * 初始化
  static const INITIAL = AppRoutes.INITIAL;

  // * 路由
  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.Application,
      page: () => ApplicationPage(),
      binding: ApplicationBinding(),
      middlewares: [],
    ),
  ];
}
