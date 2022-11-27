import 'package:repime/app/blocs/cidade/db/cidade_db.dart';
import 'package:repime/app/blocs/locatario/locatario.dart';
import 'package:repime/app/blocs/universidade/db/universidade_db.dart';
import 'package:repime/app/blocs/util/cache_manager/cache_utility.dart';

class LocatarioDB extends Locatario {
  LocatarioDB({required super.cidade, required super.universidade});

  static const String _fileNameCache = 'cache_locatario';

  Future<void> setCache() async => await CacheUtility.setCache(cache: toJson(), pathName: _fileNameCache);

  static Future<LocatarioDB?> getCache() async {
    var cache = await CacheUtility.getCache(_fileNameCache);
    if (cache == null) return cache;
    return LocatarioDB.fromJson(cache);
  }

  Future<void> deleteCache() async => await CacheUtility.deleteCache(_fileNameCache);

  toJson() {
    var uniDB = UniversidadeDB.toDB(universidade);
    var cidDB = CidadeDB.toDB(cidade);
    return {'universidade': uniDB.toJson(), 'cidade': cidDB.toJson()};
  }

  factory LocatarioDB.fromJson(j) => LocatarioDB(
      cidade: CidadeDB.fromJson(j['cidade']), universidade: UniversidadeDB.fromJson(j['universidade']));

  factory LocatarioDB.toDB(Locatario locatario) =>
      LocatarioDB(cidade: locatario.cidade, universidade: locatario.universidade);
}
