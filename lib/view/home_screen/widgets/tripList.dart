import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:travelappanimation/models/Trip.dart';

import 'trip_packagetile.dart';

class TripList extends StatefulWidget {
  @override
  _TripListState createState() => _TripListState();
}

class _TripListState extends State<TripList> {
  List _tripPackageTiles = [];
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  Tween<Offset> _offset = Tween(begin: Offset(1, 3), end: Offset(0, 0));

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _addTripPackages();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
        key: _listKey,
        initialItemCount: _tripPackageTiles.length,
        itemBuilder: (context, index, animation) {
          return SlideTransition(
              child: _tripPackageTiles[index],
              position: animation.drive(_offset));
        });
  }

void _addTripPackages() {
    // get data from db
    List<TripModel> _trips = [
      TripModel(
          title: 'MunnarTitle'.tr(),
          price: '350',
          nights: '3',
          img: 'munnar.jpg',
          details:
              "MunnarDetails".tr()),
      TripModel(
          title: 'DubaiTitle'.tr(),
          price: '400',
          nights: '5',
          img: 'dubai.jpg',
          details:'DubaiDetails'.tr()),
      TripModel(
          title: 'japanTitle'.tr(),
          price: '750',
          nights: '2',
          img: 'japan.jpg',
          details:'japanDetails'.tr()),
      TripModel(
          title: 'kashmirTitle'.tr(),
          price: '600',
          nights: '4',
          img: 'kashmir.jpg',
          details:'kashmirDetails'.tr()),
    ];

    Future ft = Future(() {});
    _trips.forEach((TripModel trip) {
      ft = ft.then((value) {
        return Future.delayed(const Duration(milliseconds: 100), () {
          _tripPackageTiles.add(TripPackageTile(context: context, trip: trip));
          _listKey.currentState!.insertItem(_tripPackageTiles.length - 1);
        });
      });
    });
  }
}


