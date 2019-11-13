class Album {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Album({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
        albumId: json['albumId'] as int,
        id: json['id'] as int,
        title: json['title'],
        url: json['url'],
        thumbnailUrl: json['thumbnailUrl']);
  }
}
