import '../datasource/solar_remote_src.dart';
import '../models/solar_member.dart';

class SolarRepository {
  final SolarRemoteSrc _solarRemoteSrc = SolarRemoteSrc();
  Future<SolarMember> getInfoForMember(String member) =>
      _solarRemoteSrc.getInfoForMember(member);
}
