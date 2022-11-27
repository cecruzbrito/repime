import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

class CacheUtility {
  static Future<String> _pathAplicattion() async => (await getApplicationDocumentsDirectory()).path;

  static Future<String> _realPath(String path, {String ext = 'json'}) async =>
      '${await _pathAplicattion()}/$path.$ext';

  static Future<void> setCache({required String pathName, required Map cache}) async {
    var jsonCache = jsonEncode(cache);
    var file = File(await _realPath(pathName));
    if (await file.exists()) await file.delete();
    file.writeAsString(jsonCache);
  }

  static Future<dynamic> getCache(String pathName) async {
    var file = File(await _realPath(pathName));
    if (!(await file.exists())) return null;
    return jsonDecode(await file.readAsString());
  }

  static Future<void> deleteCache(String pathName) async {
    var file = File(await _realPath(pathName));
    if (!(await file.exists())) return;
    await file.delete();
  }
}
