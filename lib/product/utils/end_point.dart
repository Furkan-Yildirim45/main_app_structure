enum AppServicesEndPointUtil {
  login,
  register,
}

extension EndPointUtilExtension on AppServicesEndPointUtil {
  String getName() {
    switch (this) {
      case AppServicesEndPointUtil.login:
        return "Login";
      case AppServicesEndPointUtil.register:
        return "Register";
    }
  }
}
