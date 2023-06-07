import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:inscribly/models/models.dart';

class FolderModel {
  factory FolderModel.fromJson(String source) =>
      FolderModel.fromMap(json.decode(source) as Map<String, dynamic>);

  factory FolderModel.fromMap(Map<String, dynamic> map) => FolderModel(
        userId: map['userId'] as String,
        folderName: map['folderName'] as String,
        color: Color(map['color'] as int),
        diaries: List<DiaryModel>.from(
          (map['diaries'] as List<int>).map<DiaryModel>(
            (x) => DiaryModel.fromMap(x as Map<String, dynamic>),
          ),
        ),
      );

  const FolderModel({
    required this.userId,
    required this.folderName,
    required this.color,
    required this.diaries,
  });
  final String userId;
  final String folderName;
  final Color color;
  final List<DiaryModel> diaries;

  FolderModel copyWith({
    String? userId,
    String? folderName,
    Color? color,
    List<DiaryModel>? diaries,
  }) =>
      FolderModel(
        userId: userId ?? this.userId,
        folderName: folderName ?? this.folderName,
        color: color ?? this.color,
        diaries: diaries ?? this.diaries,
      );

  Map<String, dynamic> toMap() => <String, dynamic>{
        'userId': userId,
        'folderName': folderName,
        'color': color.value,
        'diaries': diaries.map((x) => x.toMap()).toList(),
      };

  String toJson() => json.encode(toMap());

  @override
  String toString() =>
      'FolderModel(userId: $userId, folderName: $folderName, color: $color, diaries: $diaries)';

  @override
  bool operator ==(covariant FolderModel other) {
    if (identical(this, other)) return true;

    return other.userId == userId &&
        other.folderName == folderName &&
        other.color == color &&
        listEquals(other.diaries, diaries);
  }

  @override
  int get hashCode =>
      userId.hashCode ^ folderName.hashCode ^ color.hashCode ^ diaries.hashCode;
}
