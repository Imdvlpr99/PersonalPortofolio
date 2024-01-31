import 'package:logger/logger.dart';

class Utils {
  static Logger getLogger() {
    return Logger(
      printer: PrettyPrinter(),
    );
  }
}