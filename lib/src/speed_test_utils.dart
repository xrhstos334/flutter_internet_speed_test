import 'package:connectivity_plus/connectivity_plus.dart';

Future<bool> isInternetAvailable() async {
  ConnectivityResult connectivityResult = await (Connectivity().checkConnectivity());
  return connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi;
}
