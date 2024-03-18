// ignore_for_file: lines_longer_than_80_chars

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location_model.g.dart';

/// Represents detailed information about a specific location.
/// This class is designed for JSON serialization and includes features for
/// comparing instances through the Equatable packagez
@JsonSerializable()
class LocationModel extends Equatable {
  /// Constructs a [LocationModel] with optional properties.
  const LocationModel({
    this.image,
    this.country,
    this.places,
    this.city,
    this.name,
    this.description,
    this.definition,
    this.users,
  });

  /// Creates a [LocationModel] instance from a JSON map.
  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  /// URL of the image representing the location. Can be `null` if not available.

  final String? image;

  /// The country where the location is situated. Can be `null` if not specified.
  final String? country;

  /// A list of notable places within the location. Can be `null` or empty.

  final List<String>? places;

  /// The city name of the location. Can be `null` if the location does not
  /// belong to a city or if not specified.
  final String? city;

  /// The name of the location. Can be `null` if not specified.
  final String? name;

  /// A brief description of the location. Can be `null` if not provided.
  final String? description;

  /// A detailed definition or additional information about the location.
  /// Can be `null` if not available
  final String? definition;

  /// A list of [Users] associated with the location. Represents users who have
  /// interacted with or are related to the location in some way. Can be `null` or empty.
  final List<Users>? users;

  /// Converts a [LocationModel] instance to a JSON map.
  Map<String, dynamic> toJson() => _$LocationModelToJson(this);

  @override
  List<Object?> get props => [name];
}

/// Represents a user associated with a location, including information such
/// as their name, email, and the dates they started and ended their association
/// with the location.
@JsonSerializable()
class Users extends Equatable {
  /// Constructs a [Users] instance with optional properties.
  const Users({this.startingDate, this.name, this.endingDate, this.email});

  /// Creates a [Users] instance from a JSON map.
  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);

  /// The date the user started their association with the location.
  /// Can be `null` if not specified.
  final DateTime? startingDate;

  /// The date the user ended their association with the location.
  /// Can be `null` if the association is ongoing or not specified.
  final DateTime? endingDate;

  /// The name of the user. Can be `null` if not specified.
  final String? name;

  /// The email of the user. Can be `null` if not specified.
  final String? email;

  /// Converts a [Users] instance to a JSON map.
  Map<String, dynamic> toJson() => _$UsersToJson(this);

  @override
  List<Object?> get props => [name];
}
