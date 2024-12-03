

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:six_dreams_test/core/constents/page_txt_contents.dart';
import 'package:six_dreams_test/core/theme/colorpalet.dart';
import 'package:six_dreams_test/core/theme/extension/app_theme_extension.dart';
import 'package:six_dreams_test/model/joind_users_model.dart';
import 'package:six_dreams_test/view/widgets/quickstate_card_widget.dart';

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
      SliverAppBar(
        automaticallyImplyLeading: false,
        pinned: true,
        floating: true,
        elevation: 9.8,
        toolbarHeight: context.spaces.space_200 * 7+15 ,
        expandedHeight: context.spaces.space_200 * 20,
        clipBehavior: Clip.hardEdge,
        
        flexibleSpace: LayoutBuilder(
          builder: (context, constraints) {
            final isCollapsed = constraints.biggest.height <= kToolbarHeight + 200;

            return Stack(
              children: [
                FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Padding(
                    padding:  EdgeInsets.symmetric(
                        horizontal: context.spaces.space_200, vertical:context.spaces.space_200*3),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius:context.spaces.space_200*3.3,
                          backgroundImage: AssetImage(constants.userprofileimg),
                        ),
                         SizedBox(height: context.spaces.space_150),
                        Text(
                          constants.johndiotxt,
                          style: context.typography.h2SemiBold,
                        ),
                         SizedBox(height: context.spaces.space_200),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: QuickStatesCardwidget(
                                label: constants.cusomer,
                                value: constants.customervalue,
                                icon: Icons.person_2_outlined,
                              ),
                            ),
                             SizedBox(width: context.spaces.space_200*2),
                            Expanded(
                              child: QuickStatesCardwidget(
                                leadingictext: Icons.currency_rupee,
                                label: constants.money,
                                value: constants.moneyvalue,
                                icon: Icons.wallet,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                if (isCollapsed)
                  Positioned(
                    top: context.spaces.space_100 * 8,
                    left: context.spaces.space_200 ,
                    right: context.spaces.space_200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: context.spaces.space_200*5,
                          child: Card(
                            color: context.colors.secondary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(context.spaces.space_100),
                            ),
                            child: Center(
                              child: ListTile(
                                leading: CircleAvatar(backgroundImage: AssetImage('assets/images/Max-R_Headshot (1).jpg'),),
                                title: Text(constants.johndiotxt),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
 decoration: BoxDecoration(
                                        border: Border.all(color: context.colors.border),
                                        color: context.colors.secondary,
                                        borderRadius: BorderRadius.circular(context.spaces.space_150)
                                      ),                                    
                                      child: 
                                    Padding(
                                      padding:  EdgeInsets.all(context.spaces.space_100),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(constants.customervalue,style: context.typography.body,),
                                          Text(constants.cusomer),
                                        ],
                                        
                                      ),
                                    ),),
                                    SizedBox(
                                      width: context.spaces.space_100,
                                    ),
                                     Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: context.colors.border),
                                        color: context.colors.secondary,
                                        borderRadius: BorderRadius.circular(context.spaces.space_150)
                                      ),
                                      child: 
                                    Padding(
                                      padding:  EdgeInsets.all(context.spaces.space_100),
                                      child: Column(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                            Text(constants.moneyvalue,style: context.typography.body,),
                                          Text(constants.money),
                                        ],
                                        
                                      ),
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: context.spaces.space_200,),
                       Text(
                        constants.joindusers,
                         style: context.typography.body,
                       ),
                       SizedBox(height: context.spaces.space_100,)
                      ],
                    ),
                  ),
              ],
            );
          },
        ),
      ),
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



