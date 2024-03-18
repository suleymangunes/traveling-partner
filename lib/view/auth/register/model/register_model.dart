import 'package:json_annotation/json_annotation.dart';

part 'register_model.g.dart';

/// A model class representing user registration data.
@JsonSerializable()
class RegisterModel {
  /// Constructs a [RegisterModel] instance.
  RegisterModel({this.name, this.email, this.password});

  /// Creates a [RegisterModel] instance from a JSON map.
  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);

  /// The name of the user.
  String? name;

  /// The email of the user.
  String? email;

  /// The password of the user.
  String? password;

  /// Converts this object to a JSON map.
  Map<String, dynamic> toJson() => _$RegisterModelToJson(this);
}
