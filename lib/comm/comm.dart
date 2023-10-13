import 'dart:io' show Platform;

class Communication {
  static dynamic returnSuccess(final context, final message) {
    if (Platform.isWindows) {
      print(message);
    }
    context.log(message);
    return context.res.json({
      'success': true,
      'message': message,
    });
  }

  static dynamic returnFailure(final context, final String message, {String e = '', String s = ''}) {
    if (Platform.isWindows) {
      print(message);
    }
    context.error(message);
    if (e.isNotEmpty) {
      if (Platform.isWindows) {
        print(e);
      }
      context.error(e);
    }
    if (s.isNotEmpty) {
      if (Platform.isWindows) {
        print(s);
      }
      context.error(s);
    }
    return context.res.json({
      'success': false,
      'message': message,
    });
  }
}
