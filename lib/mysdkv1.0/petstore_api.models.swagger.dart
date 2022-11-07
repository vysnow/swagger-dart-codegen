// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'petstore_api.enums.swagger.dart' as enums;

part 'petstore_api.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  User({
    this.id,
    this.username,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.phone,
    this.userStatus,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  static const toJsonFactory = _$UserToJson;
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'username', defaultValue: '')
  final String? username;
  @JsonKey(name: 'firstName', defaultValue: '')
  final String? firstName;
  @JsonKey(name: 'lastName', defaultValue: '')
  final String? lastName;
  @JsonKey(name: 'email', defaultValue: '')
  final String? email;
  @JsonKey(name: 'password', defaultValue: '')
  final String? password;
  @JsonKey(name: 'phone', defaultValue: '')
  final String? phone;
  @JsonKey(name: 'userStatus')
  final int? userStatus;
  static const fromJsonFactory = _$UserFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.userStatus, userStatus) ||
                const DeepCollectionEquality()
                    .equals(other.userStatus, userStatus)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(userStatus) ^
      runtimeType.hashCode;
}

extension $UserExtension on User {
  User copyWith(
      {int? id,
      String? username,
      String? firstName,
      String? lastName,
      String? email,
      String? password,
      String? phone,
      int? userStatus}) {
    return User(
        id: id ?? this.id,
        username: username ?? this.username,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        password: password ?? this.password,
        phone: phone ?? this.phone,
        userStatus: userStatus ?? this.userStatus);
  }

  User copyWithWrapped(
      {Wrapped<int?>? id,
      Wrapped<String?>? username,
      Wrapped<String?>? firstName,
      Wrapped<String?>? lastName,
      Wrapped<String?>? email,
      Wrapped<String?>? password,
      Wrapped<String?>? phone,
      Wrapped<int?>? userStatus}) {
    return User(
        id: (id != null ? id.value : this.id),
        username: (username != null ? username.value : this.username),
        firstName: (firstName != null ? firstName.value : this.firstName),
        lastName: (lastName != null ? lastName.value : this.lastName),
        email: (email != null ? email.value : this.email),
        password: (password != null ? password.value : this.password),
        phone: (phone != null ? phone.value : this.phone),
        userStatus: (userStatus != null ? userStatus.value : this.userStatus));
  }
}

@JsonSerializable(explicitToJson: true)
class Pet {
  Pet({
    this.id,
    required this.name,
    this.category,
    this.tags,
    this.status,
  });

  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);

  static const toJsonFactory = _$PetToJson;
  Map<String, dynamic> toJson() => _$PetToJson(this);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @JsonKey(name: 'category', defaultValue: '')
  final String? category;
  @JsonKey(name: 'tags', defaultValue: '')
  final String? tags;
  @JsonKey(
    name: 'status',
    toJson: petStatusToJson,
    fromJson: petStatusFromJson,
  )
  final enums.PetStatus? status;
  static const fromJsonFactory = _$PetFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Pet &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $PetExtension on Pet {
  Pet copyWith(
      {int? id,
      String? name,
      String? category,
      String? tags,
      enums.PetStatus? status}) {
    return Pet(
        id: id ?? this.id,
        name: name ?? this.name,
        category: category ?? this.category,
        tags: tags ?? this.tags,
        status: status ?? this.status);
  }

  Pet copyWithWrapped(
      {Wrapped<int?>? id,
      Wrapped<String>? name,
      Wrapped<String?>? category,
      Wrapped<String?>? tags,
      Wrapped<enums.PetStatus?>? status}) {
    return Pet(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        category: (category != null ? category.value : this.category),
        tags: (tags != null ? tags.value : this.tags),
        status: (status != null ? status.value : this.status));
  }
}

@JsonSerializable(explicitToJson: true)
class ApiResponse {
  ApiResponse({
    this.code,
    this.type,
    this.message,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);

  static const toJsonFactory = _$ApiResponseToJson;
  Map<String, dynamic> toJson() => _$ApiResponseToJson(this);

  @JsonKey(name: 'code')
  final int? code;
  @JsonKey(name: 'type', defaultValue: '')
  final String? type;
  @JsonKey(name: 'message', defaultValue: '')
  final String? message;
  static const fromJsonFactory = _$ApiResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApiResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $ApiResponseExtension on ApiResponse {
  ApiResponse copyWith({int? code, String? type, String? message}) {
    return ApiResponse(
        code: code ?? this.code,
        type: type ?? this.type,
        message: message ?? this.message);
  }

  ApiResponse copyWithWrapped(
      {Wrapped<int?>? code,
      Wrapped<String?>? type,
      Wrapped<String?>? message}) {
    return ApiResponse(
        code: (code != null ? code.value : this.code),
        type: (type != null ? type.value : this.type),
        message: (message != null ? message.value : this.message));
  }
}

typedef UserArray$RequestBody = List<User>;
String? petStatusToJson(enums.PetStatus? petStatus) {
  return petStatus?.value;
}

enums.PetStatus petStatusFromJson(
  Object? petStatus, [
  enums.PetStatus? defaultValue,
]) {
  return enums.PetStatus.values.firstWhereOrNull((e) => e.value == petStatus) ??
      defaultValue ??
      enums.PetStatus.swaggerGeneratedUnknown;
}

List<String> petStatusListToJson(List<enums.PetStatus>? petStatus) {
  if (petStatus == null) {
    return [];
  }

  return petStatus.map((e) => e.value!).toList();
}

List<enums.PetStatus> petStatusListFromJson(
  List? petStatus, [
  List<enums.PetStatus>? defaultValue,
]) {
  if (petStatus == null) {
    return defaultValue ?? [];
  }

  return petStatus.map((e) => petStatusFromJson(e.toString())).toList();
}

List<enums.PetStatus>? petStatusNullableListFromJson(
  List? petStatus, [
  List<enums.PetStatus>? defaultValue,
]) {
  if (petStatus == null) {
    return defaultValue;
  }

  return petStatus.map((e) => petStatusFromJson(e.toString())).toList();
}

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
