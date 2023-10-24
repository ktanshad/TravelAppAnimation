import 'package:flutter/material.dart';
import 'package:travelappanimation/models/Trip.dart';
import 'package:travelappanimation/view/details.dart';


class TripList extends StatefulWidget {
  @override
  _TripListState createState() => _TripListState();
}

class _TripListState extends State<TripList> {
  List _tripPackageTiles = [];
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _addTripPackages();
     });
    
  }

  void _addTripPackages() {
    // get data from db
    List<TripModel> _trips = [
      TripModel(title: 'Munnar', price: '350', nights: '3', img: 'munnar.jpg',details: "A heaven on earth, Munnar is so green and clean! This pretty hill station in Kerala is noted for its winding slopes of tea gardens, which are iconic to the place. Located just 3 hours drive away from Kochi, Munnar is a must visit for tea lovers. The Kannan Devan Plantation Museum here offers a tour to guests where they can watch tea being processed and taste different kinds of teas."),
      TripModel(title: 'Dubai ', price: '400', nights: '5', img: 'dubai.jpg',details: 'Dubai, the city of gold and architectural marvels, has been attracting people from all over the world for a long time now. Every nook and cranny of this incredible city is dotted with eye-popping and sky-touching architecture. Dubai is also home to the tallest tower in the world, the Burj Khalifa.'),
      TripModel(title: 'japan', price: '750', nights: '2', img: 'japan.jpg',details: 'Immerse yourself in the ancient and modern cultures of Japan. Learn the art of the tea ceremony, and stand before the famous Senso-ji Buddhist temple. Tour Matsumoto Castle, known as the “Crow Castle” for its black exterior. Taste legendary Hida beef and sip sake at a local brewery. Delve into Kyoto, the marvelous cultural capital of Japan. Board the Shinkansen “bullet” train to travel to Hiroshima to visit Shrine Island and the Peace Memorial Museum. Absorb the beauty of the Golden Pavilion and the majesty of Nijo Castle. Japan slowly draws you into its eclectic culture and charm, revealing incredible moments every step of the way.'),
      TripModel(title: 'kashmir', price: '600', nights: '4', img: 'kashmir.jpg',details: 'If you are planning a week’s trip to Kashmir, you might be confused about what to see and what to skip on the Heaven on Earth? Kashmir, being the most sought-after destination in the country and the world, it is all about natural beauty, ancient architecture, gorgeous stays and sumptuous cuisine.'),
    ];
       

       Future ft=Future((){});
    _trips.forEach((TripModel trip) {
      ft=ft.then((value){
        return Future.delayed(const Duration(milliseconds: 100),(){
          _tripPackageTiles.add(_TripPackageTile(trip));
      _listKey.currentState!.insertItem(_tripPackageTiles.length-1);
        });
      });  
    });

    
  }

  Widget _TripPackageTile(TripModel trip) {
    return Stack(
     children: [
         ListTile(
               onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => TripPackageDetails(trip: trip)));
               },
               contentPadding: EdgeInsets.all(25),
               title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('${trip.nights} nights',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white)),
            Text('${trip.title}', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white)),
          ],
               ),
               leading: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Hero(
            tag: 'tag${trip.img}',
            child: Image.asset(
              'images/${trip.img}',
              height: 50.0
              
            ),
          ),
               ),
               trailing: Text('\$${trip.price}',style: TextStyle(color: Colors.white),),
             ),
    
     ],
      
    );
  }

  Tween<Offset>_offset=Tween(begin: Offset(0,1),end: Offset(0,0));

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
      key: _listKey,

      initialItemCount: _tripPackageTiles.length,
      itemBuilder: (context, index,animation) {
        return SlideTransition(
          child: _tripPackageTiles[index],
          position:animation.drive(_offset));
      }
    );
  }
}
