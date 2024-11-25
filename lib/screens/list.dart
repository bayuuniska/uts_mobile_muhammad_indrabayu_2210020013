import 'package:flutter/material.dart';
import 'detail.dart';  // Pastikan Anda mengimpor DetailScreen

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> newsList = [
      {
        'title': 'Grand Theft Auto VI Resmi Diumumkan',
        'description': 'Rockstar Games mengonfirmasi pengembangan GTA VI dengan grafik generasi baru.',
        'image': 'assets/images/list 1.jpg',
        'content': 'Rockstar Games akhirnya mengumumkan bahwa Grand Theft Auto VI (GTA VI) sedang dalam pengembangan aktif. Game ini dijadwalkan rilis pada tahun 2025 untuk platform PlayStation 5 dan Xbox Series X|S. GTA VI akan membawa pemain ke negara bagian fiktif Leonida, yang mencakup wilayah terkenal seperti Vice City yang telah diperluas. Dunia terbuka dalam game ini dijanjikan lebih besar dari sebelumnya, dengan tingkat detail yang memukau dan sistem gameplay yang lebih dinamis. Rockstar menjelaskan bahwa mereka telah menggunakan teknologi baru untuk menciptakan lingkungan yang realistis, termasuk cuaca dinamis, NPC (Non-Playable Characters) yang lebih pintar, dan berbagai misi yang memberikan kebebasan lebih kepada pemain. Trailer pertama akan dirilis pada Desember 2023 sebagai bagian dari perayaan ulang tahun ke-25 Rockstar. Banyak penggemar berspekulasi bahwa game ini akan menjadi salah satu game terbaik sepanjang masa.',
        'author': 'Rockstar Games',
      },
      {
        'title': 'Call of Duty: Modern Warfare III Siap Meluncur Akhir Tahun Ini',
        'description': 'Game ini menghadirkan cerita baru dengan mode zombie dan fitur multiplayer yang diperbarui.',
        'image': 'assets/images/list 2.jpg',
        'content': 'Activision secara resmi meluncurkan seri terbaru, Call of Duty: Modern Warfare III, yang akan dirilis pada akhir tahun 2024. Seri ini akan melanjutkan cerita yang menggantung dari Modern Warfare II dan membawa pemain kembali ke medan perang yang menegangkan. Salah satu fitur utama yang menjadi sorotan adalah mode zombie, di mana pemain dapat bekerja sama dalam tim untuk melawan gelombang musuh undead di lokasi yang penuh dengan misteri. Selain itu, mode multiplayer menerima pembaruan besar dengan peta baru, senjata yang disesuaikan, dan mekanik permainan yang ditingkatkan. Kampanye cerita dijanjikan akan memberikan pengalaman sinematik, dengan karakter yang mendalam dan plot yang berliku. Activision juga berkomitmen untuk memberikan dukungan jangka panjang melalui pembaruan konten pasca peluncuran.',
        'author': 'Call Of Duty Official',
      },
      {
        'title': 'Valve Mengembangkan Steam Deck Generasi Kedua',
        'description': 'Valve mengonfirmasi bahwa mereka sedang mengembangkan Steam Deck generasi kedua.',
        'image': 'assets/images/list 3.jpg',
        'content': 'Valve baru-baru ini mengumumkan bahwa mereka sedang mengembangkan Steam Deck generasi kedua. Perangkat ini akan membawa peningkatan besar, termasuk spesifikasi hardware yang lebih kuat, layar dengan resolusi lebih tinggi, dan masa pakai baterai yang lebih lama. Valve juga menjelaskan bahwa generasi baru ini akan kompatibel dengan semua game yang ada di Steam Library, memberikan akses ke ribuan judul, termasuk game AAA terbaru. Steam Deck generasi pertama telah menerima sambutan positif karena kemampuannya menjalankan game PC di perangkat portabel. Generasi kedua diharapkan akan mengatasi beberapa keterbatasan model pertama, seperti masalah pendinginan dan berat perangkat. Valve juga menggoda penggemar dengan kemungkinan dukungan ray tracing di perangkat ini.',
        'author': 'Steam Official',
      },
      {
        'title': 'League of Legends Worlds 2024 Akan Digelar di Korea Selatan',
        'description': 'Riot Games mengumumkan bahwa kejuaraan dunia League of Legends Worlds 2024 akan digelar di Korea Selatan.',
        'image': 'assets/images/list 4.jpg',
        'content': 'Turnamen dunia League of Legends Worlds 2024 akan diadakan di Korea Selatan, negara yang dikenal sebagai pusat budaya e-sports. Acara ini akan menghadirkan tim-tim terbaik dari seluruh dunia yang bersaing untuk memperebutkan hadiah besar dan gelar juara dunia. Riot Games menjanjikan Worlds 2024 akan menjadi turnamen paling spektakuler dengan panggung inovatif dan teknologi siaran yang memukau. Babak final akan berlangsung di stadion yang mampu menampung puluhan ribu penonton langsung. Riot juga mengumumkan bahwa mereka akan menyertakan penampilan musik dari artis internasional untuk pembukaan dan penutupan acara. Event ini diperkirakan akan menarik jutaan penonton online dari seluruh dunia.',
        'author': 'Riot Games',
      },
      {
        'title': 'The Legend of Zelda: Tears of the Kingdom Raih Game Terbaik',
        'description': 'The Legend of Zelda: Tears of the Kingdom memenangkan penghargaan sebagai Game of the Year 2024.',
        'image': 'assets/images/list 5.jpg',
        'content': 'The Legend of Zelda: Tears of the Kingdom berhasil memenangkan penghargaan Game of the Year 2024 berkat cerita yang mendalam dan gameplay inovatifnya. Dalam game ini, pemain akan kembali mengendalikan Link dalam petualangan epik untuk menyelamatkan kerajaan Hyrule dari kehancuran. Salah satu aspek yang paling dipuji adalah dunia terbuka yang luas dan beragam, memberikan kebebasan kepada pemain untuk mengeksplorasi lingkungan, menyelesaikan teka-teki, dan berinteraksi dengan karakter-karakter unik. Game ini juga memperkenalkan mekanisme gameplay baru, termasuk kemampuan untuk mengubah lingkungan dan waktu, serta sistem pertarungan yang lebih dinamis. Tears of the Kingdom berhasil memadukan elemen nostalgia dari seri sebelumnya dengan inovasi yang menarik, membuatnya menjadi salah satu game paling populer tahun ini.',
        'author': 'Nintendo Official',
      },
      // Daftar berita lainnya...
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Dunia Game - Berita Terbaru'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: newsList.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    leading: Image.asset(
                      newsList[index]['image']!,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                    title: Text(newsList[index]['title']!),
                    subtitle: Text(newsList[index]['description']!),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            title: newsList[index]['title']!,
                            content: newsList[index]['content']!,
                            image: newsList[index]['image']!,
                            author: newsList[index]['author']!,
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
          BottomNavigationBar(
            backgroundColor: Colors.black, // Warna latar belakang bottom nav
            selectedItemColor: Colors.grey, // Warna untuk item yang dipilih
            unselectedItemColor: Colors.grey, // Warna untuk item yang tidak dipilih
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.update),
                label: 'Update Berita',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notifikasi',
              ),
            ],
            onTap: (index) {
              // Arahkan ke halaman sesuai dengan tab yang dipilih
              switch (index) {
                case 0:
                  Navigator.pushNamed(context, '/home');  // Halaman Home
                  break;
                case 1:
                  Navigator.pushNamed(context, '/update-status');  // Halaman Update Status
                  break;
                case 2:
                  Navigator.pushNamed(context, '/search');  // Halaman Search
                  break;
                case 3:
                  Navigator.pushNamed(context, '/chat');  // Halaman Chat
                  break;
                case 4:
                  Navigator.pushNamed(context, '/notifications');  // Halaman Notifikasi
                  break;
              }
            },
          ),
        ],
      ),
    );
  }
}
