// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) =>
    LocationModel(
      image: json['image'] as String?,
      country: json['country'] as String?,
      places:
          (json['places'] as List<dynamic>?)?.map((e) => e as String).toList(),
      city: json['city'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      definition: json['definition'] as String?,
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => Users.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LocationModelToJson(LocationModel instance) =>
    <String, dynamic>{
      'image': instance.image,
      'country': instance.country,
      'places': instance.places,
      'city': instance.city,
      'name': instance.name,
      'description': instance.description,
      'definition': instance.definition,
      'users': instance.users,
    };

Users _$UsersFromJson(Map<String, dynamic> json) => Users(
      startingDate: json['startingDate'] as String?,
      name: json['name'] as String?,
      endingDate: json['endingDate'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$UsersToJson(Users instance) => <String, dynamic>{
      'startingDate': instance.startingDate,
      'name': instance.name,
      'endingDate': instance.endingDate,
      'email': instance.email,
    };
