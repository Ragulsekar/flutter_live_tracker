class GlobalConstants {

  static const API_KEY = 'AIzaSyBc_ql0z55A37wVlPB6E8Pv0gm8ULczW7o';

  static final baseURL = "BASE_URL";
  static final userDetails = baseURL + "user";

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Please enter a valid Email';
    else
      return null;
  }

  errorHandler(String message) {
    switch (message) {
      case "INVALID_CREDENTIAL":
        return "Please check your credentails";

      case "EMAIL_NOT_FOUND":
        return "Please check your credentails";

      case "invalid_grant":
        return "Please check your credentails";

      case "unauthorized":
        return "Please check your credentails";

      case "INVALID_PASSWORD":
        return "Please check your credentails";

      case "USER_EXISTS":
        return "User already exists.";

      case "EMAIL_EXISTS":
        return "User already exists";

      case 'invalid_token':
        return "Your token has been expired please login again";

      default:
        return "Something went wrong please try again..!";
    }
  }
}

var globalConstants = GlobalConstants();
