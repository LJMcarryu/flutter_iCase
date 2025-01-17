import 'package:logger/logger.dart';

class LJMLog {
  static final Logger _logger = Logger(
    printer:
        PrefixPrinter(PrettyPrinter(stackTraceBeginIndex: 1, methodCount: 2)),
  );

  static void t(dynamic message) {
    _logger.t(message);
  }

  static void d(dynamic message) {
    _logger.d(message);
  }

  static void i(dynamic message) {
    _logger.i(message);
  }

  static void w(dynamic message) {
    _logger.w(message);
  }

  static void e(dynamic message) {
    _logger.e(message);
  }

  static void f(dynamic message) {
    _logger.f(message);
  }
}
