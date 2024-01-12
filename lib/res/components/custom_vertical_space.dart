import 'package:mvvm_templete/utils/imports/all_imports.dart';

class CustomVerticalPadding extends StatelessWidget {
  const CustomVerticalPadding({super.key, this.v, this.h, required this.child});
  final double? v;
  final double? h;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: v ?? 20, horizontal: h ?? 0),
      child: child,
    );
  }
}
