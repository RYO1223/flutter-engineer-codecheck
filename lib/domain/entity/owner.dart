import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner.freezed.dart';

@freezed
class Owner with _$Owner {
  const factory Owner({
    required int id,
    required String avatarUrl,
    required String login,
  }) = _Owner;

  const Owner._();
}
