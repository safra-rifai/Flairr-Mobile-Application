class User {
  final String name;
  final String email;
  final String profession;
  final String imagePath;
  final String about;
  final bool isDarkLightMode;

const User ({
  required this.name,
  required this.email,
  required this.profession,
  required this.imagePath,
  required this.about,
  required this.isDarkLightMode,
  });

  Map<String, dynamic> toJason() => {

  };

}