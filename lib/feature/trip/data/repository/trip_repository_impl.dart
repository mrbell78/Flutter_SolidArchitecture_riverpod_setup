import 'package:clean_architecture_riverpod/feature/trip/data/data_sources/trip_datasource.dart';
import 'package:clean_architecture_riverpod/feature/trip/data/models/trip_model.dart';
import 'package:clean_architecture_riverpod/feature/trip/domain/entities/trip.dart';
import 'package:clean_architecture_riverpod/feature/trip/domain/repository/trip_repository.dart';

class TripRepositoryImpl implements TripRepository{

  final TripDatasource tripLocalDatasource;

  TripRepositoryImpl(this.tripLocalDatasource);

  @override
  Future<void> addTrips(Trip trip) async{
    // TODO: implement addTrips

    final tripModel = TripModel.fromEntity(trip);
    tripLocalDatasource.addTrip(tripModel);

    throw UnimplementedError();
  }

  @override
  Future<void> deleteTrips(int index)async {
    // TODO: implement deleteTrips
    tripLocalDatasource.deleteTrips(index);
    throw UnimplementedError();
  }

  @override
  Future<List<Trip>> getTrips()async {
    // TODO: implement getTrips
    final tripModel = tripLocalDatasource.getTrips();
    List<Trip> tripList = tripModel.map((model)=>model.toEntity()).toList();
    return tripList;
    throw UnimplementedError();
  }

}