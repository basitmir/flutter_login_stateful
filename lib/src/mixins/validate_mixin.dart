class ValidateMixin {
  String validateEmail(String value) {
    if (!value.contains('@')) {
      return 'Please enter the valid email';
    } else {
      return null;
    }
  } //validateEmail close

  String validatePassword(String value) {
    if (value.length < 4) {
      return 'Password must be at least 4 characters';
    } else {
      return null;
    }
  }
}
