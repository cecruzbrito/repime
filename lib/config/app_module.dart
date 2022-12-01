import 'package:flutter_modular/flutter_modular.dart';
import 'package:repime/app/pages/controller/main_controller.dart';
import 'package:repime/app/pages/pages/detalhes_vaga_page/detalhes_vaga_page.dart';
import 'package:repime/config/routes_app/routes_app.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        RouteApp.firstPage.childRoute,
        RouteApp.homePage.childRoute,
        RouteApp.registrarLocadorPage.childRoute,
        RouteApp.adicionarVaga.childRoute,
        ChildRoute(RouteApp.detalhesVaga.name, child: (context, args) => DetalhesVagaPage(vaga: args.data))
      ];

  @override
  List<Bind<Object>> get binds => [Bind.singleton((i) => MainController())];
}
