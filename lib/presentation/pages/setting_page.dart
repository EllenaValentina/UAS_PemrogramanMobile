import 'package:flutter/material.dart';
import 'package:uts_pemob/presentation/controllers/home_controller.dart';
import 'base_page.dart';

class SettingsPage extends StatelessWidget {
  final HomeController controller;

  SettingsPage(this.controller);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // AppBar dihapus karena sudah ada di BasePage
            SizedBox(height: 20),
            // Profile Settings
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: Icon(Icons.person, color: Colors.blueGrey[700]),
                title: Text('Profile', style: TextStyle(fontSize: 18)),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  print('Navigate to Profile');
                },
              ),
            ),
            SizedBox(height: 12),
            // Notifications Settings
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: Icon(Icons.notifications, color: Colors.blueGrey[700]),
                title: Text('Notifications', style: TextStyle(fontSize: 18)),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  print('Navigate to Notifications');
                },
              ),
            ),
            SizedBox(height: 12),
            // Privacy Settings
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: Icon(Icons.lock, color: Colors.blueGrey[700]),
                title: Text('Privacy', style: TextStyle(fontSize: 18)),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  print('Navigate to Privacy');
                },
              ),
            ),
            SizedBox(height: 20),
            // Theme Settings
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: Icon(Icons.brightness_6, color: Colors.blueGrey[700]),
                title: Text('Theme', style: TextStyle(fontSize: 18)),
                trailing: Switch(
                  value: false,
                  onChanged: (bool value) {
                    print('Theme changed to: ${value ? "Dark" : "Light"}');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      selectedIndex: 2, // Settings tab is selected
      controller: controller,
    );
  }
}
