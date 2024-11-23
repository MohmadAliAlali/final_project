class SignInValidation {
  static String? signInEmailValidation(String value) {
    RegExp regExp = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

    if (value.isEmpty || value == null) {
      return 'Email is required. Please enter your email';
    } else if (!regExp.hasMatch(value)) {
      return 'Invalid email format. Please enter a valid email address';
    }
    return null;
  }

  static String? SignInPasswordValidation(String value) {
    if (value.isEmpty || value == null) {
      return 'Password is requird.Please enter your password';
    } else if (value.length < 8) {
      return 'The password must not be less than 8 characters';
    }
    return null;
  }
}