import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

/// A model class representing login credentials.

@JsonSerializable()
class LoginModel {
  /// Constructs a [LoginModel] instance.
  LoginModel({this.email, this.password});

  /// Creates a [LoginModel] instance from a JSON map.
  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);

  /// The email address associated with the user's account.
  String? email;

  /// The password for the user's account.
  String? password;

  /// Converts this object to a JSON map.
  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}
