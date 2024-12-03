import 'package:flutter/material.dart';
import 'package:six_dreams_test/core/constents/page_txt_contents.dart';
import 'package:six_dreams_test/core/theme/colorpalet.dart';
import 'package:six_dreams_test/core/theme/extension/app_theme_extension.dart';

class MainBtnwidget extends StatelessWidget {
  const MainBtnwidget({
    super.key,
    required this.constants,
  });

  final FormPageConstents constants;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: context.spaces.space_150*2,bottom: context.spaces.space_150*2 ),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  // TODO
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:AppColorPalettes.orenge,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                     constants.copyreflink,
                      style: context.typography.body
                    ),
                    SizedBox(width: context.spaces.space_100,),
                    Icon(Icons.copy,color: context.colors.text,)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

