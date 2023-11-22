import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner.freezed.dart';
part 'owner.g.dart';

@freezed
class Owner with _$Owner {
  const factory Owner({
    required int id,
    @JsonKey(name: 'avatar_url') required String avatarUrl,
    required String login,
  }) = _Owner;

  const Owner._();

  factory Owner.fromJson(Map<String, Object?> json) => _$OwnerFromJson(json);
}
