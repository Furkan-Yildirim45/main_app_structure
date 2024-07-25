import 'package:logger/logger.dart';

class LoggerService {
  static LoggerService? _instance;
  static LoggerService get instance => _instance ?? LoggerService();

  final Logger _logger = Logger(
    printer: PrettyPrinter(), // Veya SimplePrinter() kullanabilirsiniz
  );

  void log(String message, [String? stackTrace]) {
    _logger.e(message, error: stackTrace);
    // Uzaktan loglama eklemek için burada bir API çağrısı yapabilirsiniz
  }
}
