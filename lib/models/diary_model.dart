import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:inscribly/utilities/utilities.dart';

class DiaryModel {
  factory DiaryModel.fromJson(String source) =>
      DiaryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  factory DiaryModel.fromMap(Map<String, dynamic> map) => DiaryModel(
        userId: map['userId'] as String,
        title: map['title'] as String,
        content: map['content'] as String,
        color: Color(map['color'] as int),
        folder: map['folder'] != null ? map['folder'] as String : null,
        mood: Mood.fromMap(map['mood'] as String),
      );

  const DiaryModel({
    required this.userId,
    required this.title,
    required this.content,
    required this.color,
    this.folder,
    required this.mood,
  });
  final String userId;
  final String title;
  final String content;
  final Color color;
  final String? folder;
  final Mood mood;

  DiaryModel copyWith({
    String? userId,
    String? title,
    String? content,
    Color? color,
    String? folder,
    Mood? mood,
  }) =>
      DiaryModel(
        userId: userId ?? this.userId,
        title: title ?? this.title,
        content: content ?? this.content,
        color: color ?? this.color,
        folder: folder ?? this.folder,
        mood: mood ?? this.mood,
      );

  Map<String, dynamic> toMap() => <String, dynamic>{
        'userId': userId,
        'title': title,
        'content': content,
        'color': color.value,
        'folder': folder,
        'mood': mood.name,
      };

  String toJson() => json.encode(toMap());

  @override
  String toString() =>
      'DiaryModel(userId: $userId, title: $title, content: $content, color: $color, folder: $folder, mood: $mood)';

  @override
  bool operator ==(covariant DiaryModel other) {
    if (identical(this, other)) return true;

    return other.userId == userId &&
        other.title == title &&
        other.content == content &&
        other.color == color &&
        other.folder == folder &&
        other.mood == mood;
  }

  @override
  int get hashCode =>
      userId.hashCode ^
      title.hashCode ^
      content.hashCode ^
      color.hashCode ^
      folder.hashCode ^
      mood.hashCode;
}
