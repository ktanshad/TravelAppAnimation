
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelappanimation/controller/tripprovider.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor:Colors.black,
       body:  Column(
       children: [
        SizedBox(height: 50,),
         Padding(
           padding: const EdgeInsets.all(10.0),
                    child:TextButton(onPressed: (){
                       Provider.of<TripProvider>(context,listen: false).changeLanguage(context);
                    }, 
                    child: Text('English or Arabic',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  ),)

       ],
     ),
    );
  }
}