import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum PetStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('available')
  available('available'),
  @JsonValue('pending')
  pending('pending'),
  @JsonValue('sold')
  sold('sold');

  final String? value;

  const PetStatus(this.value);
}
