import 'package:repime/app/blocs/residencia/blocs/endereco/endereco.dart';

class EnderecoDB extends Endereco {
  EnderecoDB({required super.endereco, required super.lat, required super.log});

  factory EnderecoDB.fromJson(j) =>
      EnderecoDB(endereco: j['']['endereco'], lat: j['']['latitude'], log: j['']['longitude']);
}
