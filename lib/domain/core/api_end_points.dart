import 'package:netflixclone/core/strings.dart';
import 'package:netflixclone/infrastructure/api_key.dart';

class ApiEndpoints {
  static const downloads = "$kbaseUrl /trending/all/day?api_key=$apiKey";
}
