import 'package:flutter/material.dart';
import 'package:six_dreams_test/core/constents/page_txt_contents.dart';
import 'package:six_dreams_test/core/theme/extension/app_theme_extension.dart';

class ImageContainerWidget extends StatelessWidget {
  const ImageContainerWidget({
    super.key,
    required this.constants,
  });

  final FormPageConstents constants;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: context.spaces.space_125 * 2),
      child: Expanded(
        child: Container(
          // width: MediaQuery.sizeOf(context).width,
          height: context.spaces.space_200 * 8.5,
          decoration:  BoxDecoration(
            image: DecorationImage(
              image: AssetImage(constants.nn),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

