import 'package:freezed_annotation/freezed_annotation.dart';

part 'lpg.freezed.dart';
part 'lpg.g.dart';

@freezed
abstract class Lpg with _$Lpg {
  const factory Lpg({required String lpg, required String marka}) = _Lpg;

  factory Lpg.fromJson(Map<String, dynamic?> json) => _$LpgFromJson(json);
}
