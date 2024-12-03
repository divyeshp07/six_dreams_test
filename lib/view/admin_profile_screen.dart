



import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
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
    ];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child:
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_rounded),
                  ),
                  Text(
                    constants.myprofiletxt,
                    style: context.typography.h3Bold,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.spaces.space_150,
                  vertical: context.spaces.space_100,
                ),
                child: Column(
                  children: [
                     CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          AssetImage(constants.userprofileimg),
                    ),
                    const SizedBox(height: 12),
                    Text(
                     constants.johndiotxt,
                      style: context.typography.h2SemiBold,
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: context.spaces.space_200 * 7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Expanded(
                            child: QuickStatesCardwidget(
                              label: constants.cusomer,
                              value: constants.customervalue,
                              icon: Icons.person_2_outlined,
                            ),
                          ),
                          SizedBox(width: context.spaces.space_150 * 2),
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
                    ),
                  ],
                ),
              ),
              SizedBox(height: context.spaces.space_200),
              Padding(
                padding:  EdgeInsets.only(left: context.spaces.space_200),
                child: Text(
                 constants.joindusers,
                  style: context.typography.body,
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: context.spaces.space_100),
                child: Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: joinedUsers.length,
                    itemBuilder: (context, index) {
                      final user = joinedUsers[index];
                      final isPositive = user.amount.contains('+');
                      return Card(
                        child: ListTile(
                          title: Text(
                            user.name,
                            style: context.typography.body,
                          ),
                          subtitle: Text("${constants.today}| ${user.time}",style:TextStyle(color:  context.colors.textSubtle),),
                          trailing: Text(
                            user.amount,
                              style: TextStyle(
                  color: isPositive ? AppColorPalettes.green :AppColorPalettes.red,
                  fontWeight: FontWeight.bold,
                  fontSize: context.spaces.space_100*2
                              ),
                          ),),);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
