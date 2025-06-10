import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:my_app_2/models/news_modelds.dart';
// عدّل المسار حسب مكان NewsModel

class NewsService {
  static Future<List<NewsModelds>> fetchTopHeadlines() async {
    final url = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=ce353351a416489ea66845d1b8852608');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List articles = data['articles'];
      return articles.map((article) => NewsModelds.fromJson(article)).toList();
    } else {
      throw Exception('فشل في تحميل الأخبار');
    }
  }
}
