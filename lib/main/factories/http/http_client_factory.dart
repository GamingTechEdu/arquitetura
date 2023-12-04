import 'package:http/http.dart';

import '../../../data/http/http_client.dart';
import '../../../http/http.dart';

HttpClient makeHttpAdapter() {
  final client = Client();
  return HttpAdapter(client);
}
