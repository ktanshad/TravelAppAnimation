
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelappanimation/controller/locale_provider.dart';
import 'package:travelappanimation/controller/tripprovider.dart';





class TripList extends StatefulWidget {


 
  @override
  _TripListState createState() => _TripListState();
}

class _TripListState extends State<TripList> {

  Tween<Offset> _offset = Tween(begin: Offset(1, 3), end: Offset(0, 0));

  @override
  void initState() {
    super.initState();
  
    WidgetsBinding.instance.addPostFrameCallback((_) {
       Provider.of<TripProvider>(context,listen: false).fetchTrips(context);
    
    });
  }
    

  @override
  Widget build(BuildContext context) {
    return Consumer<LocaleProvider>(
      builder: (context, value, child) {
        if (value.locale != LocaleProvider.previousLocale) {
          Provider.of<TripProvider>(context, listen: false).fetchTrips(context);
          LocaleProvider.previousLocale = value.locale;
        }
        return   AnimatedList(
          key: Provider.of<TripProvider>(context).listKey,
       initialItemCount:Provider.of<TripProvider>(context).tripPackageTiles.length,
         itemBuilder: (context, index, animation) {
             if (index >= Provider.of<TripProvider>(context).tripPackageTiles.length) {
              return Container(); 
             }
           return SlideTransition(
                  child: Provider.of<TripProvider>(context).tripPackageTiles[index],
               position: animation.drive(_offset));
         });
      },
     
    );
  }
}


