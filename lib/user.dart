class User {
  final String imagePath;
  final String name;

  final String about;
  final bool isDarkMode;

  const User({
    required this.imagePath,
    required this.name,
    required this.about,
    required this.isDarkMode,
  });

  User copy({
    String? imagePath,
    String? name,
    String? about,
    bool? isDarkMode,
  }) =>
      User(
          imagePath: imagePath ?? this.imagePath,
          name: name ?? this.name,
          about: about ?? this.about,
          isDarkMode: isDarkMode ?? this.isDarkMode);

  static User fromJson(Map<String, dynamic> json) => User(
        imagePath: json['imagePath'],
        name: json['name'],
        about: json['about'],
        isDarkMode: json['isDarkMode'],
      );

  Map<String, dynamic> toJson() => {
        'imagePath': imagePath,
        'name': name,
        'about': about,
        'isDarkMode': isDarkMode,
      };
}
