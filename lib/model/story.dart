class StoryModel {
  final String title;
  final String image;
  final int id;

  StoryModel(this.id, this.title, {this.image});

  StoryModel.fromJson(Map<String, dynamic> json)
      : this(json['id'], json['title'],
      image: json['image'] != null ? json['image'] : (json['images'] != null
          ? json['images'][0]
          : null));

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'image': image
    };
  }
}