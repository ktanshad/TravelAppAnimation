import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:travelappanimation/widgets/localization_checker.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor:Colors.black,
       body:  Column(
       children: [
        SizedBox(height: 50,),
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: Tooltip(
            
                    message: "change_language".tr(),
                    child:TextButton(onPressed: (){
                       LocalizationChecker.changeLanguage(context);
                    }, 
                    child: Text('English or Arabic',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  ),)
         ),
       ],
     ),
    );
  }
}