abstract class AppRoutes {
  const AppRoutes._();

  static const String initialModule = '/';
  static const String splash = '${initialModule}splash';

  static const String loginModule = '/login';
  static const String loginSuffix = '/';
  static const String login = '$loginModule$loginSuffix';

  static const String homeModule = '/home';
  static const String homeSuffix = '/';
  static const String home = '$homeModule$homeSuffix';
}
