


class AppPages {
  AppPages._();
  static const INITTAL = Routes.HOME;
  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page ()=> const HomeView(),
      binding: HomeBinding(),
    )
  ]
}
