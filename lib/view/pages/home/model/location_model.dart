import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'location_model.g.dart';

@JsonSerializable()
class LocationModel extends Equatable {
  final String? image;
  final String? country;
  final List<String>? places;
  final String? city;
  final String? name;
  final String? description;
  final String? definition;
  final List<Users>? users;

  const LocationModel(
      {this.image,
      this.country,
      this.places,
      this.city,
      this.name,
      this.description,
      this.definition,
      this.users});

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);

  @override
  List<Object?> get props => [name];
}

@JsonSerializable()
class Users extends Equatable {
  final String? startingDate;
  final String? name;
  final String? endingDate;
  final String? email;

  const Users({this.startingDate, this.name, this.endingDate, this.email});

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);

  Map<String, dynamic> toJson() => _$UsersToJson(this);

  @override
  List<Object?> get props => [name];
}
