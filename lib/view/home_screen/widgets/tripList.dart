
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
     final tripProvider = Provider.of<TripProvider>(context);
    return AnimatedList(
        key:tripProvider.listKey,
      initialItemCount: tripProvider.tripPackageTiles.length,
        itemBuilder: (context, index, animation) {
          return SlideTransition(
                 child: tripProvider.tripPackageTiles[index],
              position: animation.drive(_offset));
        });
  }
}


