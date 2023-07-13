class Communication {
  static void returnSuccess(final res, final message) {
    print(message);
    res.json({
      'success': true,
      'message': message,
    }, status: 200);
  }

  static void returnFailure(final res, final String message) {
    print(message);
    res.json({
      'success': false,
      'message': message,
    }, status: 500);
  }
}
