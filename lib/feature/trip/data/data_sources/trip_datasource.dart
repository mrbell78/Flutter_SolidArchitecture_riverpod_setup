import 'package:clean_architecture_riverpod/feature/trip/data/models/trip_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TripDatasource{

  final Box<TripModel> tripBox;

  TripDatasource({required this.tripBox});


  List<TripModel> getTrips(){
    return tripBox.values.toList();
  }

  addTrip(TripModel trip){
    return tripBox.add(trip);
  }

  deleteTrips(int index){
    return tripBox.delete(index);
  }
}