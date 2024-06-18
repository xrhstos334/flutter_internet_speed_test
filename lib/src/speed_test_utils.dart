import 'package:connectivity_plus/connectivity_plus.dart';

Future<bool> isInternetAvailable() async {
  List<ConnectivityResult> connectivityResult = await (Connectivity().checkConnectivity());
  return connectivityResult.first == ConnectivityResult.mobile || connectivityResult.first == ConnectivityResult.wifi;
}
