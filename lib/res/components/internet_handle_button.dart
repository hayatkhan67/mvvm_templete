import '../../utils/imports/all_imports.dart';

class InternetException extends StatelessWidget {
  const InternetException({super.key, required this.onPressed});
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Icon(
            Icons.cloud_off,
            size: Get.height * 0.10,
            color: Colors.red,
          ),
          const CustomVerticalPadding(
              child: CustomText(
            text:
                "We're unable to show results. \nPlease check you data\nconnection.",
            size: 17,
            fWeight: FontWeight.bold,
          )),
          CustomButton(
              onPressed: onPressed,
              width: 150,
              color: Colors.red,
              buttonText: "Retry")
        ],
      ),
    );
  }
}
