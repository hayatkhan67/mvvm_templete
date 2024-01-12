import 'package:mvvm_templete/utils/imports/all_imports.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      this.textAlign,
      this.maxLines,
      this.style,
      this.color,
      this.size,
      this.fontFamily,
      this.fWeight});
  final String text;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextStyle? style;
  final Color? color;
  final double? size;
  final String? fontFamily;
  final FontWeight? fWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      textScaler: const TextScaler.linear(1),
      maxLines: maxLines ?? 6,
      overflow: TextOverflow.ellipsis,
      style: style ??
          TextStyle(
            color: color,
            fontSize: size ?? 15,
            fontFamily: fontFamily,
            fontWeight: fWeight,
            overflow: TextOverflow.ellipsis,
          ),
    );
  }
}
