enum Mood {
  normal,
  happy,
  sad,
  reflection,
  excited,
  contemplation,
  gratitude,
  frustration,
  serenity;

  factory Mood.fromMap(String value) =>
      Mood.values.firstWhere((e) => e.name == value, orElse: () => Mood.normal);
}

enum ButtonType {
  primary,
  secondary,
  outlined,
  text,
}
