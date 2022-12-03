import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

class CacheUtility {
  static Future<String> _pathAplicattion() async => (await getApplicationDocumentsDirectory()).path;

  static Future<String> _pathTempAplicattion() async => (await getTemporaryDirectory()).path;

  static Future<String> _realPath(String path, {String ext = 'json', bool isTemp = false}) async =>
      isTemp ? '${await _pathTempAplicattion()}/$path.$ext' : '${await _pathAplicattion()}/$path.$ext';

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

  static Future<String> setImage(Uint8List bytes, String path, {bool isTemp = false}) async {
    var realP = await _realPath(path, ext: 'jpg', isTemp: isTemp);
    var file = File(realP);
    if (await file.exists() && !isTemp) await file.delete();
    await file.writeAsBytes(bytes);
    return file.path;
  }

  static Future<String?> getImageTemp(String path) async {
    var file = File(await _realPath(path, ext: 'jpg', isTemp: true));
    if (!await file.exists()) return null;
    return file.path;
  }

  static Future<void> deleteImage(String pathName) async {
    var file = File(await _realPath(pathName));
    if (!await file.exists()) return;
    await file.delete();
  }
}
