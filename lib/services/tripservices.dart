import 'package:flutter/material.dart';
import 'package:travelappanimation/models/Trip.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TripService {
  // This function simulates fetching trips from an API or database.
  List<TripModel> fetchTrips(BuildContext context) {
    // Replace this with your actual data-fetching logic.
    return [
      TripModel(
        title: AppLocalizations.of(context)!.munnartitle,
        price: '350',
        nights: '3',
        img: 'munnar.jpg',
        details: AppLocalizations.of(context)!.munnardetails,
      ),
      TripModel(
        title: AppLocalizations.of(context)!.dubaititle,
        price: '400',
        nights: '5',
        img: 'dubai.jpg',
        details: AppLocalizations.of(context)!.dubaidetails,
      ),
      TripModel(
        title: AppLocalizations.of(context)!.japantitle,
        price: '750',
        nights: '2',
        img: 'japan.jpg',
        details: AppLocalizations.of(context)!.japandetails,
      ),
      TripModel(
        title: AppLocalizations.of(context)!.kashmirtitle,
        price: '600',
        nights: '4',
        img: 'kashmir.jpg',
        details: AppLocalizations.of(context)!.kashmirdetails,
      ),
    ];
  }
}






