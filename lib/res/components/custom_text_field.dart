import '../../utils/imports/all_imports.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.hintText,
      required this.label,
      this.setValidate,
      this.onFieldSubmitted,
      this.textSize,
      this.maxLines,
      this.onChanged,
      required this.controller,
      this.border,
      this.prefixIcon,
      this.suffixIcon,
      this.obscureText,
      this.autofocus,
      this.floatingLabelAlignment,
      this.keyboardType});
  final String? hintText;
  final String label;
  final String? Function(String?)? setValidate;
  final String? Function(String?)? onFieldSubmitted;
  final double? textSize;
  final int? maxLines;
  final void Function(String)? onChanged;
  final TextEditingController controller;
  final InputBorder? border;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final bool? autofocus;
  final FloatingLabelAlignment? floatingLabelAlignment;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      decoration: InputDecoration(
          label: CustomText(
            text: label,
            size: textSize ?? 15,
            fWeight: FontWeight.w600,
          ),
          fillColor: Colors.white,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          alignLabelWithHint: true,
          floatingLabelAlignment: floatingLabelAlignment,
          filled: true,
          hintText: hintText ?? label,
          border: border ?? InputBorder.none),
      controller: controller,
      obscureText: obscureText ?? false,
      style: TextStyle(fontSize: textSize ?? 25, color: Colors.black),
      keyboardType: keyboardType,
      autofocus: autofocus ?? false,
      maxLines: maxLines ?? 1,
      minLines: 1,
      validator: setValidate ??
          (value) {
            if (value!.isEmpty) {
              return 'invalid';
            } else {
              return null;
            }
          },
    );
  }
}
