
import 'package:hive/hive.dart';

import '../../domain/entities/trip.dart';
part 'trip_model.g.dart';

@HiveType(typeId: 0)
class TripModel{
  @HiveField(0)
  final String title;
  @HiveField(1)
  final List<String> photos;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final DateTime dateTime;
  @HiveField(4)
  final String location;

  TripModel({required this.title, required this.photos, required this.description, required this.dateTime, required this.location});




  // conversion from entity to model
  factory TripModel.fromEntity(Trip trip)=>TripModel(title: trip.title, photos: trip.photos, description: trip.description, dateTime: trip.dateTime, location: trip.location);


  // conversion from model to entity
  Trip toEntity()=>Trip(title: title, photos: photos, description: description, dateTime: dateTime, location: location);

}