import 'package:repime/app/blocs/residencia/blocs/endereco/endereco.dart';

class EnderecoDB extends Endereco {
  EnderecoDB({required super.endereco, required super.lat, required super.log});

  factory EnderecoDB.fromJson(j) =>
      EnderecoDB(endereco: j['']['endereco'], lat: j['']['latitude'], log: j['']['longitude']);

  toJson() => {
        '': {'endereco': endereco, 'latitude': lat, 'longitude': log}
      };

  factory EnderecoDB.toDB(Endereco e) => EnderecoDB(endereco: e.endereco, lat: e.lat, log: e.log);
}
