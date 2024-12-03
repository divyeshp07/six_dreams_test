

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:six_dreams_test/core/constents/page_txt_contents.dart';
import 'package:six_dreams_test/core/theme/colorpalet.dart';
import 'package:six_dreams_test/core/theme/extension/app_theme_extension.dart';
import 'package:six_dreams_test/view/widgets/quickstate_card_widget.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constants = ref.watch(pageConstentsProvider);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal:context.spaces.space_150,vertical: context.spaces.space_25*2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: context.spaces.space_150 * 7,
                child: Card(
                  color: context.colors.secondary,
                  child: Center(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: context.spaces.space_100 * 3,
                      ),
                      title: Text(constants.johndiotxt),
                      trailing: Text(
                        constants.myprofiletxt,
                        style: context.typography.bodyLargeSemiBold,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: context.spaces.space_125 * 2),
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: context.spaces.space_200 * 8.5,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/nn.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              
              
              Padding(
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
            child: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  ),
),

               SizedBox(height: context.spaces.space_100*2),
               Text(
               constants.quickstatetxy,
                style: context.typography.h2SemiBold
              ),
              const SizedBox(height: 16),
            
SizedBox(
  height: context.spaces.space_200 * 7, 
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: QuickStatesCardwidget(
          label: 'Customers',
          value: '12333',
          icon: Icons.person_2_outlined,
        ),
      ),
      SizedBox(width: context.spaces.space_150*2), // Space between cards
      Expanded(
        child: QuickStatesCardwidget(
          leadingictext:  Icons.monetization_on_outlined,
          label: 'Money',
          value: '123333',
          icon: Icons.wallet,
        ),
      ),
    ],
  ),
),
      SizedBox(height: context.spaces.space_150*2), // Space between cards

SizedBox(
    height: context.spaces.space_200 * 7, 

  child: QuickStatesCardwidget(label: 'Earned from criket', value: '654', icon: Icons.sports_cricket,leadingictext:        Icons.monetization_on_outlined,
)),
      // SizedBox(width: context.spaces.space_150*4), // Space between cards


              Padding(
                padding:  EdgeInsets.only(top: context.spaces.space_150*2),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        child: ElevatedButton(
                          onPressed: () {},
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
              ),

            ],
          ),
        ),
      ),
    );
  }
}
