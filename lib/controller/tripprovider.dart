import 'package:flutter/material.dart';
import 'package:travelappanimation/models/Trip.dart';
import 'package:travelappanimation/services/tripservices.dart';
import 'package:travelappanimation/view/home_screen/widgets/trip_packagetile.dart';

class TripProvider with ChangeNotifier {
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  final TripServices _tripService = TripServices();
  List tripPackageTiles = [];


  void fetchTrips(BuildContext context) {
   Future ft = Future(() {});
   _tripService.trips.forEach((TripModel trip) {
      ft = ft.then((value) {
        return Future.delayed(const Duration(milliseconds: 100), () {
          tripPackageTiles.add(TripPackageTile(context: context, trip: trip));
          listKey.currentState!.insertItem(tripPackageTiles.length - 1);
        });
      });
    });
    notifyListeners();
  }
}

