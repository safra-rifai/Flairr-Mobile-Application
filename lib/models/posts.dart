class Post{
  String caption;
  String postUrl;
  double height;

  Post(
      this.caption,
      this.postUrl,
      this.height,
      );

  static List<Post> generatePosts(){
    return[
      Post("Wedding Photography", "assets/photography/img 1.png", 220),
      Post("Birthday Bash", "assets/photography/img 2.png", 140),
      Post("Wedding Photography", "assets/photography/img 3.png", 200),
      Post("Susnets", "assets/photography/img 4.png", 240),
      Post("Wedding Photography", "assets/photography/img 5.png", 180),
    ];
  }
}