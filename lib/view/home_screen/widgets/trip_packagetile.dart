import 'package:flutter/material.dart';
import 'package:travelappanimation/models/Trip.dart';
import 'package:travelappanimation/view/details_screen/details.dart';

class TripPackageTile extends StatelessWidget {
  const TripPackageTile({
    super.key,
    required this.context,
    required this.trip,
  });

  final BuildContext context;
  final TripModel trip;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TripPackageDetails(trip: trip)));
          },
          contentPadding: EdgeInsets.all(25),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('${trip.nights} nights',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              Text('${trip.title}',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ],
          ),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Hero(
              tag: 'tag${trip.img}',
              child: Image.asset('images/${trip.img}', height: 50.0),
            ),
          ),
          trailing: Text(
            '\$${trip.price}',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}