

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:six_dreams_test/core/constents/page_txt_contents.dart';
import 'package:six_dreams_test/core/theme/extension/app_theme_extension.dart';
import 'package:six_dreams_test/view/widgets/image_container_widget.dart';
import 'package:six_dreams_test/view/widgets/main_btn_widget.dart';
import 'package:six_dreams_test/view/widgets/profileCard_dashbord_widget.dart';
import 'package:six_dreams_test/view/widgets/quickstate_card_widget.dart';
import 'package:six_dreams_test/view/widgets/serchfeildFromTo_widget.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});
    static const routePath = '/';


  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final constants = ref.watch(pageConstentsProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal:context.spaces.space_150,vertical: context.spaces.space_25*2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // profilecard dashbord
                ProfileCardWidget(constants: constants),

                // imagecontainer
                ImageContainerWidget(constants: constants),
                
                // serchfeild
                TextFeildFromToWidget(constants: constants),
        
        // quickstatetxt
                 SizedBox(height: context.spaces.space_100*2),
                 Text(
                 constants.quickstatetxy,
                  style: context.typography.h2SemiBold
                ),
                const SizedBox(height: 16),

        // quickstaterow
        SizedBox(
          height: context.spaces.space_200 * 7, 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
         Expanded(
          child: QuickStatesCardwidget(
            label:constants.cusomer ,
            value: constants.customervalue,
            icon: Icons.person_2_outlined,
          ),
        ),
        SizedBox(width: context.spaces.space_150*2),
         Expanded(
          child: QuickStatesCardwidget(
            leadingictext:  Icons.currency_rupee,
            label: constants.money,
            value:constants.moneyvalue,
            icon: Icons.wallet,
          ),
        ),
            ],
          ),
        ),

        SizedBox(height: context.spaces.space_150*2), 
        
        SizedBox(
            height: context.spaces.space_200 * 8, 
        
          child:  QuickStatesCardwidget(label: constants.erndfromcrktmoney, value: constants.ernedfromkrct, icon: Icons.sports_cricket,leadingictext:        Icons.monetization_on_outlined,
        )),
        
        // copyreferlnkbtn
                MainBtnwidget(constants: constants),
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}

