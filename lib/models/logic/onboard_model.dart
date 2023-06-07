import 'dart:convert';

class OnboardingModel {
  factory OnboardingModel.fromJson(String source) =>
      OnboardingModel.fromMap(json.decode(source) as Map<String, dynamic>);

  factory OnboardingModel.fromMap(Map<String, dynamic> map) => OnboardingModel(
        title: map['title'] as String,
        highlightText: map['highlightText'] as String,
        subtitle: map['subtitle'] as String,
        description: map['description'] as String,
      );

  const OnboardingModel({
    required this.title,
    required this.highlightText,
    required this.subtitle,
    required this.description,
  });
  final String title;
  final String highlightText;
  final String subtitle;
  final String description;

  OnboardingModel copyWith({
    String? title,
    String? highlightText,
    String? subtitle,
    String? description,
  }) =>
      OnboardingModel(
        title: title ?? this.title,
        highlightText: highlightText ?? this.highlightText,
        subtitle: subtitle ?? this.subtitle,
        description: description ?? this.description,
      );

  Map<String, dynamic> toMap() => <String, dynamic>{
        'title': title,
        'highlightText': highlightText,
        'subtitle': subtitle,
        'description': description,
      };

  String toJson() => json.encode(toMap());

  @override
  String toString() =>
      'OnboardingModel(title: $title, highlightText: $highlightText, subtitle: $subtitle, description: $description)';

  @override
  bool operator ==(covariant OnboardingModel other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.highlightText == highlightText &&
        other.subtitle == subtitle &&
        other.description == description;
  }

  @override
  int get hashCode =>
      title.hashCode ^
      highlightText.hashCode ^
      subtitle.hashCode ^
      description.hashCode;
}
