import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:six_dreams_test/core/constents/page_txt_contents.dart';
import 'package:six_dreams_test/core/theme/extension/app_theme_extension.dart';
import 'package:six_dreams_test/view/admin_profile_screen.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({
    super.key,
    required this.constants,
  });

  final FormPageConstents constants;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.spaces.space_150 * 7,
      child: Card(
        
        color: context.colors.secondary,
        child: Center(
          child: ListTile(
            onTap: () {
              context.push(AdminProfileScreen.routePath);
           
            },
            leading: CircleAvatar(
              radius: context.spaces.space_100 * 3,
              backgroundImage: AssetImage('assets/images/Max-R_Headshot (1).jpg'),
            ),
            title: Text(constants.johndiotxt),
            trailing: Text(
              constants.myprofiletxt,
              style: context.typography.bodyLargeSemiBold,
            ),
          ),
        ),
      ),
    );
  }
}

