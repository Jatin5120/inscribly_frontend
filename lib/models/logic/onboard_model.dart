import 'dart:convert';

class OnboardingModel {
  factory OnboardingModel.fromJson(String source) => OnboardingModel.fromMap(json.decode(source) as Map<String, dynamic>);

  factory OnboardingModel.fromMap(Map<String, dynamic> map) => OnboardingModel(
        title: map['title'] as String,
        highlightText: map['highlightText'] as String,
        subtitle: map['subtitle'] as String,
        description: map['description'] as String,
        asset: map['asset'] as String,
      );

  const OnboardingModel({
    required this.title,
    required this.highlightText,
    required this.subtitle,
    required this.description,
    required this.asset,
  });
  final String title;
  final String highlightText;
  final String subtitle;
  final String description;
  final String asset;

  OnboardingModel copyWith({
    String? title,
    String? highlightText,
    String? subtitle,
    String? description,
    String? asset,
  }) =>
      OnboardingModel(
        title: title ?? this.title,
        highlightText: highlightText ?? this.highlightText,
        subtitle: subtitle ?? this.subtitle,
        description: description ?? this.description,
        asset: asset ?? this.asset,
      );

  Map<String, dynamic> toMap() => <String, dynamic>{
        'title': title,
        'highlightText': highlightText,
        'subtitle': subtitle,
        'description': description,
        'asset': asset,
      };

  String toJson() => json.encode(toMap());

  @override
  String toString() => 'OnboardingModel(title: $title, highlightText: $highlightText, subtitle: $subtitle, description: $description, asset: $asset)';

  @override
  bool operator ==(covariant OnboardingModel other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.highlightText == highlightText &&
        other.subtitle == subtitle &&
        other.description == description &&
        other.asset == asset;
  }

  @override
  int get hashCode => title.hashCode ^ highlightText.hashCode ^ subtitle.hashCode ^ description.hashCode ^ asset.hashCode;
}
