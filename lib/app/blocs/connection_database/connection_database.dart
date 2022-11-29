import 'package:postgres/postgres.dart';

class ConnectionDataBase {
  final _connection = PostgreSQLConnection(
      _SettingsDataBase.host, _SettingsDataBase.post, _SettingsDataBase.databaseName,
      useSSL: true, username: _SettingsDataBase.userName, password: _SettingsDataBase.password);

  Future<List<Map<String, Map<String, dynamic>>>> make(
    QueryDataBase query,
  ) async {
    await _connection.open();
    var result = await _connection.mappedResultsQuery(query.commandSQL, substitutionValues: query.arguments);
    await _connection.close();
    return result;
  }
}

class QueryDataBase {
  String commandSQL;
  Map<String, dynamic>? arguments;

  QueryDataBase({required this.commandSQL, this.arguments});
}

class _SettingsDataBase {
  static String host = 'ec2-44-205-112-253.compute-1.amazonaws.com';
  static int post = 5432;
  static String databaseName = 'dbic3d8ae92k0g';
  static String userName = 'rvlqgsmoasvxtw';
  static String password = '1c904be91c5beadfb894177922e55adf47e40c6a3519faacb9d15182d94703f8';
}
