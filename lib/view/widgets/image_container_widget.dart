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
      padding: EdgeInsets.symmetric(vertical: context.spaces.space_125 * 2,),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          // color: Colors.amberAccent
          borderRadius: BorderRadius.circular(context.spaces.space_150),
          image: DecorationImage(
            image: AssetImage('assets/images/image.png'),
            fit: BoxFit.cover,
            
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(context.spaces.space_200), 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              Text(
                constants.imgtxt1,
                style: context.typography.body,
              ),
              SizedBox(height: context.spaces.space_25), 
              Text(
               constants.imgtxt2,
                style: context.typography.h3SemiBold,
              ),
              SizedBox(height: context.spaces.space_25), 
              Text(
                constants.imgtxt3,
                style: context.typography.body,
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {
                  // TODO
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:context.colors.text, 
                  padding: EdgeInsets.symmetric(horizontal: context.spaces.space_200*2, vertical: context.spaces.space_100),
                ),
                child: Text(constants.imgbtntxt, style: TextStyle(color: context.colors.btnText)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
