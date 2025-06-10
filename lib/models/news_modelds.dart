class NewsModelds {
  final String title;
  final String imageUrl;
  final String sourceName;
  final String publishedAt;

  NewsModelds({
    required this.title,
    required this.imageUrl,
    required this.sourceName,
    required this.publishedAt,
  });

  factory NewsModelds.fromJson(Map<String, dynamic> json) {
    return NewsModelds(
      title: json['title'] ?? 'no title',
      imageUrl: json['urlToImage'] ?? '',
      sourceName: json['source']['name'] ?? 'Unknown Source',
      publishedAt: json['publishedAt']?.substring(0, 10) ?? '',
    );
  }
}
