import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/route_manager.dart';
import 'package:money_diagram/src/pages/home_page.dart';

const String initialRoute = '/';

List<GetPage> pages = [
  GetPage(name: initialRoute, page: () => const HomePage()),
];
