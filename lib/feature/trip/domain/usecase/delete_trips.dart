import 'package:clean_architecture_riverpod/feature/trip/domain/repository/trip_repository.dart';

class DeleteTrips{
  final TripRepository tripRepository;

  DeleteTrips({required this.tripRepository});

  Future<void>deleteTrips(int index){
    return tripRepository.deleteTrips(index);
  }

}