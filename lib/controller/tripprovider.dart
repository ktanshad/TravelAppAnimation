
import 'package:flutter/material.dart';
import 'package:travelappanimation/models/Trip.dart';
import 'package:travelappanimation/view/home_screen/widgets/trip_packagetile.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TripProvider extends ChangeNotifier {


  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  List tripPackageTiles = [];
  void fetchTrips(BuildContext context) {
    tripPackageTiles.clear();
    List<TripModel> trips = [
      TripModel(
          title:AppLocalizations.of(context)!.munnartitle,
          price: '350',
          nights: '3',
          img: 'munnar.jpg',
          details: AppLocalizations.of(context)!.munnardetails),
      TripModel(
          title: AppLocalizations.of(context)!.dubaititle,
          price: '400',
          nights: '5',
          img: 'dubai.jpg',
          details:AppLocalizations.of(context)!.dubaidetails),
      TripModel(
          title: AppLocalizations.of(context)!.japantitle,
          price: '750',
          nights: '2',
          img: 'japan.jpg',
          details:AppLocalizations.of(context)!.japandetails),
      TripModel(
          title: AppLocalizations.of(context)!.kashmirtitle,
          price: '600',
          nights: '4',
          img: 'kashmir.jpg',
          details:AppLocalizations.of(context)!.kashmirdetails),
    ];

   Future ft = Future(() {});
   trips.forEach((TripModel trip) {
      ft = ft.then((value) {
        return Future.delayed(const Duration(milliseconds: 100), () {
          tripPackageTiles.add(TripPackageTile(context: context, trip: trip));
          listKey.currentState!.insertItem(tripPackageTiles.length - 1);
        });
      });
      notifyListeners();
    });
  }

}

