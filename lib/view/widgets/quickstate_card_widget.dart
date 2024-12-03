import 'package:flutter/material.dart';
import 'package:six_dreams_test/core/theme/extension/app_theme_extension.dart';

class QuickStatesCardwidget extends StatelessWidget {
 
  const QuickStatesCardwidget({super.key, 
    required this.label,
    required this.value,
    required this.icon,  this.leadingictext

  });
   final String label;
 final String value;
 final IconData icon;
 final IconData ?leadingictext;

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            border: Border.all(color: context.colors.border),
            color: context.colors.secondary,
            borderRadius: BorderRadius.circular(context.spaces.space_150*2),
          ),
          padding:  EdgeInsets.symmetric(horizontal:context.spaces.space_200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                   Icon(icon, color:context.colors.text, size: context.spaces.space_150*2),const Spacer(),
                  IconButton(onPressed: () {
                    
                  }, icon:  Icon(Icons.arrow_forward_ios_rounded,color: context.colors.text,size: context.spaces.space_200,))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(leadingictext),
                  SizedBox(width: context.spaces.space_25,),
                  Text(
                    value.toString(),
                    style:  context.typography.bodyLarge
                  ),

                ],
              ),
              Text(
                label.toString(),
               style: TextStyle(color: context.colors.textSubtle,fontSize: context.spaces.space_200),
              ),
            ],
          ),
        );
  }
}
