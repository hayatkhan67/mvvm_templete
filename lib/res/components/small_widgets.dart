import 'package:mvvm_templete/utils/imports/all_imports.dart';

//push naviagte
pushNavigate(context, route) {
  return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => route,
      ));
}

//some space
sizedBox({double? h, double? width}) {
  return SizedBox(
    height: h ?? 20,
    width: width,
  );
}
