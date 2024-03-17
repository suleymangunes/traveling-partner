import 'package:json_annotation/json_annotation.dart';

part 'register_model.g.dart';

@JsonSerializable()
class RegisterModel {
  String? name;
  String? email;
  String? password;

  RegisterModel({this.name, this.email, this.password});

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterModelToJson(this);
}
