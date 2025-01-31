import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  final List<String> courses = [
    'Kursus Flutter untuk Pemula',
    'Desain Grafis Dasar',
    'Manajemen Waktu untuk Profesional',
    'Pengembangan Diri dalam Bisnis',
    'Pengantar Python untuk Pemula',
    'Desain UI/UX untuk Aplikasi Mobile',
    'Pemrograman Web dengan HTML, CSS, dan JavaScript',
    'Fotografi Dasar untuk Pemula',
    'Pemasaran Digital untuk Bisnis',
    'Kepemimpinan dalam Organisasi',
    'Public Speaking dan Presentasi Efektif',
    'Manajemen Keuangan untuk Individu',
    'Pemrograman Android dengan Kotlin',
    'Pengembangan Aplikasi dengan React Native',
    'Manajemen Proyek dengan Agile dan Scrum',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 20),
      itemCount: courses.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 5,
          child: ListTile(
            contentPadding: EdgeInsets.all(15),
            title: Text(
              courses[index],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Deskripsi singkat tentang kursus ini...'),
            onTap: () {
              // Arahkan ke halaman detail kursus (jika ada)
            },
          ),
        );
      },
    );
  }
}
