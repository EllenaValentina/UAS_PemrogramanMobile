import 'package:flutter/material.dart';
import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController controller;

  HomePage(this.controller);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Selamat Datang di EduSelf',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.indigo[900],
              letterSpacing: 2.0,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            'Jelajahi kursus dan artikel untuk pengembangan diri Anda!',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40),
          Center(
            child: Icon(
              Icons.school,
              size: 100,
              color: Colors.indigo[900],
            ),
          ),
          SizedBox(height: 20),
          _buildElegantCard(
            title: 'Courses',
            content: 'Pelajari keterampilan baru dengan berbagai kursus yang tersedia.',
            icon: Icons.menu_book,
            iconBackground: Colors.blueAccent,
          ),
          SizedBox(height: 20),
          _buildElegantCard(
            title: 'Article',
            content: 'Dapatkan wawasan dan inspirasi dari berbagai artikel menarik.',
            icon: Icons.article,
            iconBackground: Colors.tealAccent,
          ),
          SizedBox(height: 20),
          _buildElegantCard(
            title: 'Profile',
            content: 'Kelola akun dan pantau progres belajar Anda.',
            icon: Icons.person,
            iconBackground: Colors.purpleAccent,
          ),
        ],
      ),
    );
  }

  Widget _buildElegantCard({
    required String title,
    required String content,
    required IconData icon,
    required Color iconBackground,
  }) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 12,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: iconBackground,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              size: 40,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo[900],
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  content,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
