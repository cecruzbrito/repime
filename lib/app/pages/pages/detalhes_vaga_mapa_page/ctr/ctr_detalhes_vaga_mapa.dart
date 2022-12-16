import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_routes/google_maps_routes.dart';
import 'package:mobx/mobx.dart';

import '../../../../blocs/vaga/vaga.dart';
import '../../../controller/main_controller.dart';
part 'ctr_detalhes_vaga_mapa.g.dart';

class CtrDetalhesVagaMapa = _CtrDetalhesVagaMapaBase with _$CtrDetalhesVagaMapa;

abstract class _CtrDetalhesVagaMapaBase with Store {
  @observable
  var loading = true;

  @action
  void _setLoading(bool value) => loading = value;

  @observable
  Vaga? vaga;

  @action
  void setVaga(Vaga value) => vaga = value;

  @observable
  Location? localizationResidencia;

  @observable
  Location? localizationUniversidade;

  @action
  Future<void> getLocalization() async {
    _setLoading(true);
    localizationResidencia = (await locationFromAddress(vaga!.residencia.toNameEndereco)).first;
    var endUniversidade = Modular.get<MainController>().locatarioAtual.universidade.nome +
        Modular.get<MainController>().locatarioAtual.cidade.nome;
    localizationUniversidade = (await locationFromAddress(endUniversidade)).first;
    _setIcons();
    _setLoading(false);
  }

  @observable
  GoogleMapController? ctrMap;

  @action
  Future<void> setCtrMap(GoogleMapController value) async {
    ctrMap = value;
  }

  @action
  void tapInVoltar() => Modular.to.pop();

  @action
  LatLng computeCentroid(List<LatLng> points) {
    double latitude = 0;
    double longitude = 0;
    int n = points.length;
    for (LatLng point in points) {
      latitude += point.latitude;
      longitude += point.longitude;
    }
    return LatLng(latitude / n, longitude / n);
  }

  @action
  Future<Uint8List> _setIconsMap(String path) async {
    ByteData data = await rootBundle.load(path);
    Codec codec = await instantiateImageCodec(data.buffer.asUint8List(), targetHeight: 100, targetWidth: 100);
    FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ImageByteFormat.png))!.buffer.asUint8List();
  }

  @observable
  BitmapDescriptor? iconUniversidade;

  @observable
  BitmapDescriptor? iconResidencia;

  @action
  Future<void> _setIcons() async {
    iconUniversidade = BitmapDescriptor.fromBytes(await _setIconsMap("assets/location_outlined.png"));
    iconResidencia = BitmapDescriptor.fromBytes(await _setIconsMap("assets/location.png"));
  }

  @action
  String toStringUniversidade() => Modular.get<MainController>().locatarioAtual.universidade.nome;

  void dispose() {
    ctrMap!.dispose();
  }

  String? get distanceCalculator {
    if (localizationResidencia == null || localizationUniversidade == null) return null;
    return DistanceCalculator().calculateRouteDistance([
      LatLng(localizationResidencia!.latitude, localizationResidencia!.longitude),
      LatLng(localizationUniversidade!.latitude, localizationUniversidade!.longitude),
    ]);
  }
}
