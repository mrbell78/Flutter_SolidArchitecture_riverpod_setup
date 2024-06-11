import 'package:clean_architecture_riverpod/feature/trip/domain/repository/trip_repository.dart';

import '../entities/trip.dart';

class AddTrips{
  final TripRepository tripRepository;

  AddTrips({required this.tripRepository});

  Future<void>addTrips(Trip trip){
    return tripRepository.addTrips(trip);
  }

}