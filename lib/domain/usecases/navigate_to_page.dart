import 'package:uts_pemob/core/navigation/navigation_service.dart';

class NavigateToPageUseCase {
  final NavigationService _navigationService;
  final Map<int, String> _routes = {
    0: '/base',
    1: '/home',
    2: '/setting',
    3: '/profile',
  };

  NavigateToPageUseCase(this._navigationService);

  void execute(int index) {
    final route = _routes[index];
    if (route != null) {
      _navigationService.navigateTo(route);
    } else {
      throw Exception('Invalid page index');
    }
  }
}
