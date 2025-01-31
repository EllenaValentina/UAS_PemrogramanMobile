#Analisis Scope dan Fungsi Aplikasi EduSelf

##Scope Aplikasi
EduSelf adalah aplikasi mobile yang berfokus pada pendidikan dan pengembangan diri, menawarkan fitur-fitur utama sebagai berikut:
Halaman Home: Menyediakan tampilan pengantar aplikasi dengan berbagai informasi menarik bagi pengguna.
Halaman Kursus: Menampilkan daftar kursus yang dapat dipilih oleh pengguna. Terdapat kursus-kursus yang diambil oleh pengguna, dengan deskripsi singkat.
Halaman Profil: Menampilkan informasi pengguna dan memungkinkan pengguna untuk mengedit profil mereka, seperti nama, foto, dan bio. Juga mencakup statistik pengajaran dan pengikut.
Halaman Pengaturan (Settings): Memungkinkan pengguna untuk mengatur preferensi akun seperti pengaturan profil, notifikasi, privasi, dan tema aplikasi (gelap/terang).
Navigasi: Aplikasi mengimplementasikan navigasi bottom bar yang memungkinkan pengguna berpindah antara halaman Home, Courses, Profile, dan Settings.

##Fungsi Teknis
###Pengelolaan Halaman (Pages):
HomePage, CoursesPage, ProfilePage, dan SettingsPage dibungkus dalam widget BasePage yang menyediakan struktur dasar seperti AppBar dan BottomNavigationBar.
Navigasi antar halaman diatur melalui NavigationService dan NavigateToPageUseCase yang memfasilitasi pemindahan antar rute.
###Halaman Profil (ProfilePage):
Pengguna dapat melihat dan mengedit informasi pribadi mereka seperti nama, bio, dan foto profil.
Menampilkan statistik pengguna, seperti jumlah kursus yang diambil, artikel yang diterbitkan, dan jumlah pengikut.
###Halaman Kursus (CoursesPage):
Menampilkan daftar kursus yang diambil oleh pengguna.
List item menggunakan Card untuk menampilkan kursus dengan deskripsi singkat.
###Pengaturan Tema (SettingsPage):
Menyediakan opsi untuk mengubah tema aplikasi antara mode terang dan gelap menggunakan Switch.
Pengguna juga dapat mengakses pengaturan privasi, notifikasi, dan lainnya.
###Penggunaan State Management:
Aplikasi menggunakan HomeController yang mengelola berbagai interaksi dan navigasi dalam aplikasi, seperti pemilihan tab pada BottomNavigationBar.

##Fungsi Non-Teknis
###Pengguna:
Pengguna adalah individu yang tertarik untuk belajar dan mengembangkan diri melalui kursus dan artikel.
EduSelf memungkinkan pengguna untuk memperbarui informasi pribadi mereka dan mengikuti perkembangan dunia pendidikan secara real-time.
###Tujuan Aplikasi:
Aplikasi ini bertujuan untuk menjadi platform pendidikan yang mengedepankan pengembangan diri dan pemanfaatan teknologi untuk pembelajaran.
###Interaktivitas:
Pengguna dapat berinteraksi dengan berbagai elemen aplikasi seperti memilih kursus, mengedit profil, dan mengatur preferensi aplikasi.
Setiap elemen dirancang untuk mempermudah pengguna dalam mengakses informasi pendidikan.

##Analisis SWOT EduSelf
###Strengths (Kekuatan)
User Interface yang Bersih dan Modern: Aplikasi menggunakan desain berbasis Material Design, yang memberikan pengalaman pengguna yang nyaman dan intuitif.
Struktur Halaman yang Jelas: Dengan adanya halaman yang dibagi secara terpisah untuk kursus, profil, dan pengaturan, pengguna dapat dengan mudah mengakses informasi yang mereka butuhkan.
Navigasi yang Mudah: Bottom navigation bar yang jelas membantu pengguna berpindah antar halaman tanpa kebingungan.
Kustomisasi Pengguna: Fitur pengaturan profil yang memungkinkan pengguna untuk mengubah foto, nama, dan bio memberikan fleksibilitas kepada pengguna.

###Weaknesses (Kelemahan)
Data Statis: Kursus yang ditampilkan saat ini bersifat statis dan tidak terhubung ke backend untuk pembaruan data secara otomatis. Pengguna mungkin merasa terhambat dengan kurangnya pembaruan atau tambahan kursus baru.
Autentikasi Pengguna: Aplikasi belum menyertakan sistem autentikasi untuk pengguna. Tanpa autentikasi, pengguna tidak dapat memiliki pengalaman yang dipersonalisasi, seperti menyimpan kursus favorit atau melacak progres.
Pengaturan Tema yang Belum Berfungsi Sepenuhnya: Pilihan untuk mengubah tema aplikasi (gelap/terang) saat ini masih statis dan tidak mempengaruhi tema secara keseluruhan.

###Opportunities (Peluang)
Integrasi Backend: Menghubungkan aplikasi dengan sistem backend untuk mengelola kursus dan data pengguna akan memberikan fleksibilitas lebih bagi aplikasi untuk diperbarui secara dinamis.
Fitur Komunitas: Menambahkan fitur komunitas atau forum tempat pengguna bisa berdiskusi tentang kursus atau berbagi pengalaman belajar akan meningkatkan interaktivitas.
Autentikasi dan Pengelolaan Pengguna: Menambahkan fitur autentikasi untuk memungkinkan pengguna menyimpan data pribadi dan preferensi mereka, serta melacak kemajuan kursus.

###Threats (Ancaman)
Kompetisi dengan Aplikasi Pendidikan Lain: Ada banyak aplikasi edukasi di pasar yang menyediakan kursus online, yang mungkin membuat aplikasi ini kurang menonjol tanpa fitur tambahan atau konten yang unik.
Isu Keamanan Data: Tanpa sistem autentikasi dan pengelolaan data yang baik, ada potensi kebocoran data pengguna yang dapat merugikan aplikasi dan pengguna.
Ketergantungan pada Platform Pihak Ketiga: Penggunaan layanan pihak ketiga seperti Firebase atau API untuk pengelolaan data kursus dapat membawa risiko jika ada perubahan atau pembatasan pada layanan tersebut.

###Kesimpulan
EduSelf adalah aplikasi yang memiliki potensi besar untuk menjadi platform edukasi yang sangat berguna dan fleksibel. Namun, ada beberapa aspek teknis dan non-teknis yang perlu diperhatikan, terutama dalam hal pengelolaan data dinamis dan autentikasi pengguna. Implementasi integrasi backend untuk kursus dan autentikasi pengguna akan sangat meningkatkan nilai dari aplikasi ini. Selain itu, memperkenalkan fitur komunitas dan menjaga keamanan data pengguna juga merupakan langkah penting untuk meningkatkan keberlanjutan dan pertumbuhan aplikasi ini.
