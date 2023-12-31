import 'package:first_project/helpers/colors.dart';
import 'package:first_project/widgets/add_card_popup.dart';
import 'package:flutter/material.dart';

class BankingWidget extends StatelessWidget {
  const BankingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[Text('Բանկինգ',style:TextStyle(color: AppColors.appBlack),),
        Icon(Icons.av_timer_outlined,color: AppColors.appBlack,),
        ] ),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              // show popup screen
              showDialog(
                  context: context,
                  builder: (_) {
                    return AddCreditCartWidget();
                  });
    
              //
            },
            child: Text("Add Credit Cart"),
          ),
        ],
      ),
    );
  }
}
