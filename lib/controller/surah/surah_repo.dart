import 'package:dio/dio.dart';
import 'package:myapp/model/surah.dart'; // Import file model Anda di sini

class SurahRepository {
  final Dio _dio = Dio();

  Future<Surah> fetchSurah() async {
    try {
      final response = await _dio.get('http://api.alquran.cloud/v1/surah'); // Ganti dengan URL API Anda
      if (response.statusCode == 200) {
        return Surah.fromJson(response.data);
      } else {
        throw Exception('Failed to load Surah');
      }
    } catch (e) {
      throw Exception('Failed to load Surah: $e');
    }
  }
}
