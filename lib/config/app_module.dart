import 'package:flutter_modular/flutter_modular.dart';
import 'package:repime/app/blocs/residencia/residencia.dart';
import 'package:repime/app/pages/controller/main_controller.dart';
import 'package:repime/config/routes_app/routes_app.dart';

import '../app/pages/pages/detalhes_vaga_page/ctr/ctr_detalhes_vaga.dart';
import '../app/pages/pages/perfil_locador_page/ctr/perfil_locador_ctr.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        RouteApp.firstPage.childRoute,
        RouteApp.homePage.childRoute,
        RouteApp.registrarLocadorPage.childRoute,
        RouteApp.adicionarVaga.childRoute,
        RouteApp.detalhesVaga.childRoute,
        RouteApp.perfilLocador.childRoute,
        RouteApp.loginLocador.childRoute,
      ];

  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => MainController()),
        Bind.singleton((i) => CtrDetalhesVaga()),
        Bind.singleton((i) => PerfilLocadorCtr()),
      ];
}
