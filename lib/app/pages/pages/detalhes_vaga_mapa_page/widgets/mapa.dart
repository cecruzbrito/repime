import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:repime/app/pages/pages/detalhes_vaga_mapa_page/ctr/ctr_detalhes_vaga_mapa.dart';

class Mapa extends StatelessWidget {
  const Mapa({super.key, required this.ctr});
  final CtrDetalhesVagaMapa ctr;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Observer(builder: (context) {
      if (ctr.iconUniversidade == null || ctr.localizationResidencia == null) {
        return Container();
      }

      return GoogleMap(
        mapType: MapType.normal,
        markers: {
          Marker(
              infoWindow: InfoWindow(title: ctr.toStringUniversidade()),
              markerId: const MarkerId('1'),
              icon: ctr.iconUniversidade ?? BitmapDescriptor.defaultMarker,
              position:
                  LatLng(ctr.localizationUniversidade!.latitude, ctr.localizationUniversidade!.longitude)),
          Marker(
              infoWindow: InfoWindow(title: ctr.toStringUniversidade()),
              markerId: const MarkerId('2'),
              icon: ctr.iconResidencia ?? BitmapDescriptor.defaultMarker,
              position: LatLng(ctr.localizationResidencia!.latitude, ctr.localizationResidencia!.longitude))
        },
        minMaxZoomPreference: const MinMaxZoomPreference(14.5, 20),
        initialCameraPosition: CameraPosition(
            target: ctr.computeCentroid([
          LatLng(ctr.localizationResidencia!.latitude, ctr.localizationResidencia!.longitude),
          LatLng(ctr.localizationUniversidade!.latitude, ctr.localizationUniversidade!.longitude),
        ])),
        onMapCreated: ctr.setCtrMap,
        mapToolbarEnabled: false,
        buildingsEnabled: false,
        tiltGesturesEnabled: false,
      );
    });
  }
}
