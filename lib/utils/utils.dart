import 'imports/all_imports.dart';

class Utils {
  static final emailRegExp = RegExp(r"[a-zA-Z0-9._-]+@[a-z]+\.[a-z]+");

  static emailValidation(v) {
    if (v!.isEmpty) {
      return "Email Required";
    } else if (!Utils.emailRegExp.hasMatch(v)) {
      return "Enter a valid email address";
    } else {
      return null;
    }
  }

  static toastMessage(String msg) {
    return Fluttertoast.showToast(
        msg: msg,
        backgroundColor: AppColors.grey,
        gravity: ToastGravity.BOTTOM,
        textColor: Colors.black,
        toastLength: Toast.LENGTH_SHORT,
        webPosition: 1,
        timeInSecForIosWeb: 1);
  }

  static Future<void> runUrl({
    required String url,
  }) async {
    try {
      final uri = Uri.parse(url);
      if (!await launchUrl(uri)) {
        throw Exception('network error $url');
      }
    } catch (e) {
      toastMessage(e.toString());
    }
  }
}
