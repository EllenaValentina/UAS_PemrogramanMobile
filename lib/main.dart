import 'package:flutter/material.dart';
import 'package:uts_pemob/core/navigation/navigation_service.dart';
import 'package:uts_pemob/domain/usecases/navigate_to_page.dart';
import 'package:uts_pemob/presentation/controllers/home_controller.dart';
import 'package:uts_pemob/presentation/pages/base_page.dart';
import 'package:uts_pemob/presentation/pages/courses_page.dart';
import 'package:uts_pemob/presentation/pages/home_page.dart';
import 'package:uts_pemob/presentation/pages/profile_page.dart';
import 'package:uts_pemob/presentation/pages/setting_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navigationService = NavigationService();
    final navigateToPageUseCase = NavigateToPageUseCase(navigationService);
    final homeController = HomeController(navigateToPageUseCase);

    return MaterialApp(
      navigatorKey: navigationService.navigatorKey,
      title: 'EduSelf',
      debugShowCheckedModeBanner: false,
      initialRoute: '/home', // Menyesuaikan dengan rute yang ada
      routes: {
        '/home': (context) => BasePage(
          bodyContent: HomePage(homeController), // Menampilkan HomePage sebagai dashboard
          selectedIndex: 0,
          controller: homeController,
        ),
        '/courses': (context) => BasePage(
          bodyContent: CoursesPage(), // Menampilkan KursusPage
          selectedIndex: 1,
          controller: homeController,
        ),
        '/profile': (context) => BasePage(
          bodyContent: ProfilePage(homeController), // Menampilkan ProfilePage
          selectedIndex: 2,
          controller: homeController,
        ),
        '/setting': (context) => BasePage(
          bodyContent: SettingsPage(homeController), // Menampilkan SettingsPage
          selectedIndex: 3,
          controller: homeController,
        ),
      },
    );
  }
}
