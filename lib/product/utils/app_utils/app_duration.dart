
class AppDuration {
  static late final AppDuration? _instance;
  static AppDuration get instance => _instance ?? AppDuration();

  Duration get durationFast=> const Duration(milliseconds: 350);
  Duration get durationNormal => const Duration(seconds: 1);
  Duration get durationSlow => const Duration(seconds: 2);  
}
