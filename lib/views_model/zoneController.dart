import 'package:flutter_auth/models/zoneModel.dart';
import 'package:flutter_auth/services/apiFlouka.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ZoneController extends GetxController {
  final _session = GetStorage();
  // ignore: deprecated_member_use
  var zones = List<Zone>().obs;
  // ignore: deprecated_member_use
  var filtredZones = List<Zone>().obs;
  var selectedZone = Zone().obs;

  void changeSelectedZone(id) {
    selectedZone.value = filtredZones.firstWhere((v) => v.id == int.parse(id));

    _saveSession(selectedZone.value);
  }

  void _saveSession(Zone zone) {
    _session.write("zoneSelected", true);
    _session.write("zoneId", zone.id);
    _session.write("zoneName", zone.nom);
  }

  void filterZones(villeId) {
    filtredZones.value = zones
        .where((element) => element.villeId == int.parse(villeId))
        .toList();
  }

  @override
  void onInit() {
    ApiFlouka.getZones().then((result) {
      zones.value = result;
      if (_session.read("zoneSelected")) {
        selectedZone.value.id = _session.read("zoneId");
        selectedZone.value.nom = _session.read("zoneName");
        filterZones(_session.read("villeId").toString());
      }
    });

    super.onInit();
  }
}
