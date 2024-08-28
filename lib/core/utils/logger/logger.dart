// ignore_for_file: constant_identifier_names

import 'dart:developer';

class LoggerUtils {
  LoggerUtils._();

  ///use Log.v. Print all Logs
  static const int VERBOSE = 2;

  ///use Log.d. Print Debug Logs
  static const int DEBUG = 3;

  ///use Log.i. Print Info Logs
  static const int INFO = 4;

  ///use Log.w. Print warning logs
  static const int WARN = 5;

  ///use Log.e. Print error logs
  static const int ERROR = 6;

  static const String tag = 'debug';

  static void _log(int priority, String tag, String message) {
    log('${_getPriorityText(priority)}$tag: $message');
  }

  static String _getPriorityText(int priority) {
    switch (priority) {
      case INFO:
        return 'INFOⓘ|';
      case DEBUG:
        return 'DEBUG|';
      case ERROR:
        return 'ERROR⚠️|️';
      case WARN:
        return 'WARN⚠️|';
      case VERBOSE:
      default:
        return '';
    }
  }

  ///Print general logs
  static void v(String message) {
    _log(VERBOSE, tag, message);
  }

  ///Print info logs
  static void i(String message) {
    _log(INFO, tag, message);
  }

  ///Print debug logs
  static void d(String message) {
    _log(DEBUG, tag, message);
  }

  ///Print warning logs
  static void w(String message) {
    _log(WARN, tag, message);
  }

  ///Print error logs
  static void e(String message) {
    _log(ERROR, tag, message);
  }
}
