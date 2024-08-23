import '../../utils/imports/all_imports.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onPressed,
      this.height,
      this.width,
      this.radius,
      this.color,
      required this.buttonText});
  final Function() onPressed;
  final double? height;
  final double? width;
  final double? radius;
  final Color? color;
  final bool loading = false;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
          height: height ?? 40,
          width: width ?? Get.width * 0.90,
          decoration: BoxDecoration(
              color: color ?? Colors.blue,
              borderRadius: BorderRadius.circular(radius ?? 10)),
          child: loading
              ? const Center(
                  child: SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  ),
                )
              : Center(
                  child: Text(
                    buttonText,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white),
                  ),
                )),
    );
  }
}
