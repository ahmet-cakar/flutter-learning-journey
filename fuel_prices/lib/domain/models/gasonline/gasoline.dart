import 'package:freezed_annotation/freezed_annotation.dart';

part 'gasoline.freezed.dart';
part 'gasoline.g.dart';

@freezed
abstract class Gasoline with _$Gasoline {
  const factory Gasoline({
    required String marka,
    required double dizel,
    required String katkili,
  }) = _Gasoline;

  factory Gasoline.fromJson(Map<String, dynamic?> json) =>
      _$GasolineFromJson(json);
}
