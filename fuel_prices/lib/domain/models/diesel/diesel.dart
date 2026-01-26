
import 'package:freezed_annotation/freezed_annotation.dart';

part 'diesel.freezed.dart';
part 'diesel.g.dart';

@freezed
abstract class Diesel with _$Diesel {

const factory Diesel({
  required String marka,
  required double dizel,
  required String katkili,
}) = _Diesel;

factory Diesel.fromJson(Map<String,dynamic> json)=>_$DieselFromJson(json);

}