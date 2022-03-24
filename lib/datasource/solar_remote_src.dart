import 'dart:convert';

import 'package:flutter/services.dart';
import '../constants.dart';
import '../models/solar_member.dart';

class SolarRemoteSrc {
  Future<SolarMember> getInfoForMember(String member) async {
    var _response = '';
    switch (member) {
      case sun_details:
        _response = await rootBundle.loadString('samples/sun_data.json');
        break;
      case mercury_details:
        _response = await rootBundle.loadString('samples/mercury_data.json');
        break;
      case venus_details:
        _response = await rootBundle.loadString('samples/venus_data.json');
        break;
      case earth_details:
        _response = await rootBundle.loadString('samples/earth_data.json');
        break;
      case mars_details:
        _response = await rootBundle.loadString('samples/mars_data.json');
        break;
      case jupiter_details:
        _response = await rootBundle.loadString('samples/jupiter_data.json');
        break;
      case saturn_details:
        _response = await rootBundle.loadString('samples/saturn_data.json');
        break;
      case neptune_details:
        _response = await rootBundle.loadString('samples/neptune_data.json');
        break;
      case uranus_details:
        _response = await rootBundle.loadString('samples/uranus_data.json');
        break;
      case pluto_details:
        _response = await rootBundle.loadString('samples/pluto_data.json');
        break;
      default:
        _response = '';
    }

    if (_response.isEmpty) return Future.error(Exception());
    final _member = SolarMember.fromJson(
        await json.decode(_response) as Map<String, dynamic>);
    return Future.delayed(const Duration(seconds: 3), () => _member);
  }
}
