

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:six_dreams_test/core/constents/page_txt_contents.dart';
import 'package:six_dreams_test/core/theme/colorpalet.dart';
import 'package:six_dreams_test/core/theme/extension/app_theme_extension.dart';
import 'package:six_dreams_test/model/joind_users_model.dart';
import 'package:six_dreams_test/view/widgets/sliverappbar_widget.dart';

class AdminProfileScreen extends ConsumerWidget {
  const AdminProfileScreen({super.key});
  static const routePath = '/admin';
  

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constants = ref.watch(pageConstentsProvider);
    

    final List<JoinedUser> joinedUsers = [
      JoinedUser(name: "Arvind Kumar", time: "05:40 PM", amount: "- ₹45"),
      JoinedUser(name: "Arvind Kumar", time: "05:40 PM", amount: "+ ₹45"),
      JoinedUser(name: "Arvind Kumar", time: "05:40 PM", amount: "+ ₹500"),
      JoinedUser(name: "Linda Smith", time: "06:00 PM", amount: "+ ₹100"),
      JoinedUser(name: "John Deo", time: "06:15 PM", amount: "+ ₹75"),
      JoinedUser(name: "Emily Brown", time: "06:30 PM", amount: "+ ₹200"),
      JoinedUser(name: "Emily Brown", time: "06:30 PM", amount: "+ ₹200"),
      JoinedUser(name: "Emily Brown", time: "06:30 PM", amount: "+ ₹200"),
      JoinedUser(name: "Emily Brown", time: "06:30 PM", amount: "+ ₹200"),
      JoinedUser(name: "Emily Brown", time: "06:30 PM", amount: "+ ₹200"),
      JoinedUser(name: "Emily Brown", time: "06:30 PM", amount: "+ ₹200"),
      JoinedUser(name: "Emily Brown", time: "06:30 PM", amount: "+ ₹200"),
    ];

    return
     Scaffold(
  body: CustomScrollView(
    slivers: [
      SliverAppbarWidget(constants: constants),
      SliverToBoxAdapter(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal:context.spaces.space_200 ),
          child: Text(
            constants.joindusers,
            style: context.typography.h3SemiBold,
          ),
        ),
      ),
      SliverList(
        delegate: SliverChildBuilderDelegate(
                    childCount: joinedUsers.length,

          
          (context, index) {
         final isPositive = joinedUsers[index].amount.contains('+');


            return
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:context.spaces.space_200),
              child: Card(
                color: context.colors.secondary,
                          child: ListTile(
                            title: Text(
                              joinedUsers[index].name,
                              style: context.typography.body,
                            ),
                            subtitle: Text("${constants.today}| ${joinedUsers[index].time}",style:TextStyle(color:  context.colors.textSubtle),),
                            trailing: Text(
                              joinedUsers[index].amount,
                                style: TextStyle(
                    color: isPositive ? AppColorPalettes.green :AppColorPalettes.red,
                    fontWeight: FontWeight.bold,
                    fontSize: context.spaces.space_100*2
                                ),
                            ),),),
            );
          }  
        ),
      ),
    ],
  ),
);

  }
}

