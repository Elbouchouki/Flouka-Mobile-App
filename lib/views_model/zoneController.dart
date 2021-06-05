import 'package:flutter_auth/models/zoneModel.dart';
import 'package:flutter_auth/services/apiFlouka.dart';
import 'package:get/get.dart';

class ZoneController extends GetxController {
  // ignore: deprecated_member_use
  var zones = List<Zone>().obs;
  var selectedZone = Zone().obs;

  @override
  void onInit() {
    ApiFlouka.getZones().then((result) {
      zones.value = result;
    });
    super.onInit();
  }
}
