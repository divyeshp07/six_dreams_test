
import 'package:go_router/go_router.dart';
import 'package:six_dreams_test/main.dart';
import 'package:six_dreams_test/view/admin_profile_screen.dart';
import 'package:six_dreams_test/view/dashboard_screen.dart';

final router = GoRouter(
  navigatorKey: MyApp.navigatorKey,
  initialLocation: DashboardScreen.routePath,
  routes: [
    GoRoute(
      path: DashboardScreen.routePath,
      builder: (context, state) {
        return const DashboardScreen();
      },
     // },
    ),
    GoRoute(
      path: AdminProfileScreen.routePath,
      builder: (context, state) {
        return const AdminProfileScreen();
      },
      
    ),
  ],
);