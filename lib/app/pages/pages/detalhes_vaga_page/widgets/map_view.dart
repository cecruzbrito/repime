import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:repime/app/pages/pages/detalhes_vaga_page/ctr/ctr_detalhes_vaga.dart';

class MapViewDistancia extends StatelessWidget {
  const MapViewDistancia({super.key, required this.ctr});
  final CtrDetalhesVaga ctr;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Observer(builder: (_) {
      return Container();
      // SizedBox(
      //   height: size.height * .4,
      //   child: GoogleMap(
      //       mapType: MapType.hybrid,
      //       markers: {
      //         Marker(
      //           markerId: MarkerId('1'),
      //           position:
      //               LatLng(ctr.localizationUniversidade!.latitude, ctr.localizationUniversidade!.longitude),
      //         ),
      //         Marker(
      //           markerId: MarkerId('2'),
      //           position: LatLng(ctr.localizationResidencia!.latitude, ctr.localizationResidencia!.longitude),
      //         )
      //       },
      //       minMaxZoomPreference: MinMaxZoomPreference(14, 20),
      //       initialCameraPosition: CameraPosition(
      //           zoom: 15,
      //           target:
      //               LatLng(ctr.localizationUniversidade!.latitude, ctr.localizationUniversidade!.longitude)),
      //       onMapCreated: ctr.setCtrMap),
      // );
    });
  }
}
