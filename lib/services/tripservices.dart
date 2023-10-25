import 'package:easy_localization/easy_localization.dart';
import 'package:travelappanimation/models/Trip.dart';

class TripServices{
  // get data from db
    List<TripModel> trips = [
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
  }





