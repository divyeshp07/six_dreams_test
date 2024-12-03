import 'package:flutter/material.dart';
import 'package:six_dreams_test/core/constents/page_txt_contents.dart';
import 'package:six_dreams_test/core/theme/extension/app_theme_extension.dart';

class TextFeildFromToWidget extends StatelessWidget {
  const TextFeildFromToWidget({
    super.key,
    required this.constants,
  });

  final FormPageConstents constants;

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: EdgeInsets.symmetric(vertical: context.spaces.space_125),
              child: Container(
                padding: EdgeInsets.symmetric(
            horizontal: context.spaces.space_100,
            vertical: context.spaces.space_75,
                ),
                decoration: BoxDecoration(
            border: Border.all(color: context.colors.border),
            color: context.colors.secondary, 
            borderRadius: BorderRadius.circular(context.spaces.space_125 * 2),
                ),
                child: Row(
            children: [
             
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
    hintText: constants.fromTxt,
    hintStyle: TextStyle(color: context.colors.textSubtle),
    border: InputBorder.none,
    contentPadding: EdgeInsets.symmetric(
      vertical: context.spaces.space_50, 
    ),
                  ),
                ),
              ),
              SizedBox(width: context.spaces.space_75*3),
            
              Container(
                height: context.spaces.space_200*2,
                width: 1,
                color: Colors.grey,
              ),
              SizedBox(width: context.spaces.space_75),
            
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
    hintText: constants.totxt,
    hintStyle: TextStyle(color: context.colors.textSubtle),
    border: InputBorder.none,
    contentPadding: EdgeInsets.symmetric(
      vertical: context.spaces.space_50, 
    ),
                  ),
                ),
              ),
              SizedBox(width: context.spaces.space_100),
            
              SizedBox(
                width: context.spaces.space_200 * 3,
                child: ElevatedButton(
                  onPressed: () {
    // TODO: Add search functionality
                  },
                  style: ElevatedButton.styleFrom(
    backgroundColor:context.colors.primary, 
    shape: RoundedRectangleBorder(
      borderRadius:
          BorderRadius.circular(context.spaces.space_200),
    ),
    padding: EdgeInsets.all(context.spaces.space_75),
                  ),
                  child:  Icon(
    Icons.search,
    color:context.colors.btnText,
                  ),
                ),
              ),
            ],
                ),
              ),
            );
  }
}

