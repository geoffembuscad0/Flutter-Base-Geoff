class AppRoutes {
  static const dashboard = "/home/dashboard";
  static const inventory = "/home/inventory";
  static const customer = "/home/customer";
  static const setting = "/home/setting";
  static const admin = "/home/admin";
  static const report = "/home/report";
  static const message = "/home/message";
  static const request = "/home/request";
  static const productDetail = "/home/product";
  static const timeClock = "/home/time-clock";
  //
  static const login = "/login";
  static const register = "/register";
  static const companyAuth = "/company-auth";
}

const List<String> kAuthenticatedRoutes = [
  AppRoutes.dashboard,
  AppRoutes.inventory,
  AppRoutes.customer,
  AppRoutes.setting,
  AppRoutes.admin,
  AppRoutes.report,
  AppRoutes.message,
  AppRoutes.request,
  AppRoutes.productDetail,
  AppRoutes.companyAuth,
  AppRoutes.timeClock
];

//
const List<String> kUnauthenticatedRoutes = [
  AppRoutes.companyAuth,
  AppRoutes.login,
];

abstract class AppSubRoute {
  int? get sideMenuIndex;
  String? get param;
}

class ProductDetailRoute implements AppSubRoute {
  final String productId;
  ProductDetailRoute(this.productId);
  @override
  int? get sideMenuIndex => 1;

  @override
  String? get param => productId;
}
