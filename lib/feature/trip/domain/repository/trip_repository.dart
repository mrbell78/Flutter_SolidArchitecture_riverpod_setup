import 'package:clean_architecture_riverpod/feature/trip/domain/entities/trip.dart';

abstract class TripRepository{
  Future<Trip>getTrips();
  Future<void>addTrips(Trip trip);
  Future<void>deleteTrips(int index);

}