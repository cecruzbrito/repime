import 'package:repime/app/blocs/connection_database/connection_database.dart';
import 'package:repime/app/blocs/locador/locador.dart';

class LocadorDB extends Locador {
  LocadorDB({required super.id, required super.contato, required super.nome, required super.senha});

  static Future<void> inserirInDB(Locador locador) async => await ConnectionDataBase().make(QueryDataBase(
          commandSQL:
              "SELECT * FROM adicionar_locador(@locadorNome, @locadorSenha, @locadorContato, @locadorFoto)",
          arguments: {
            'locadorNome': locador.nome,
            'locadorSenha': locador.senha,
            'locadorContato': locador.contato,
            'locadorFoto': locador.foto
          }));

  static makeLogin(String nome, String senha) async {
    return (await ConnectionDataBase().make(QueryDataBase(
        commandSQL: "SELECT * FROM check_locador(@nomeLocador, @senhaLocador)",
        arguments: {'nomeLocador': nome, 'senhaLocador': senha})))[0][''];
  }

  static Future<bool> existsUsername(String nome) async => (await ConnectionDataBase().make(QueryDataBase(
          commandSQL: 'SELECT * FROM locador WHERE nome = @loc_nome', arguments: {'loc_nome': nome})))
      .isNotEmpty;

  factory LocadorDB.fromLogin(j, {required String senhaDecodificada}) =>
      LocadorDB(contato: j['contato'], id: j['id'], nome: j['nome'], senha: senhaDecodificada);

  toJson() => {'id': id, 'contato': 'contato', 'nome': nome, 'foto': foto, 'senha': senha};

  factory LocadorDB.fromCache(j) =>
      LocadorDB(contato: j['contato'], id: j['id'], nome: j['nome'], senha: j['senha']);
}
