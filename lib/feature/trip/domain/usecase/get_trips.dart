import 'package:clean_architecture_riverpod/feature/trip/domain/repository/trip_repository.dart';

import '../entities/trip.dart';

class GetTrips{
  final TripRepository repository;

  GetTrips({required this.repository});

  Future<Trip>call(){
    return repository.getTrips();
  }

}