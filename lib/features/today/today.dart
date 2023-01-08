import 'package:freezed_annotation/freezed_annotation.dart';

part 'today.freezed.dart';
part 'today.g.dart';

@freezed
class Today with _$Today {
  const factory Today({
    @Default(false) bool fabExpanded,
  }) = _Today;

  factory Today.fromJson(Map<String, dynamic> json) => _$TodayFromJson(json);
}
