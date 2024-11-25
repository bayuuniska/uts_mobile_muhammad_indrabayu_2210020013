import 'package:flutter/material.dart';
import 'screens/login.dart';  // Import halaman login
import 'screens/list.dart';  // Import halaman list
import 'screens/detail.dart';  // Import halaman detail
import 'screens/home.dart';  // Import halaman Home
import 'screens/update_status.dart';  // Import halaman Update Status
import 'screens/search.dart';  // Import halaman Search
import 'screens/chat.dart';  // Import halaman Chat
import 'screens/notifications.dart';  // Import halaman Notifications

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/list': (context) => ListScreen(),
        '/detail': (context) => DetailScreen(title: '', content: '', image: '', author: ''),  // Halaman Detail
        '/home': (context) => HomeScreen(),  // Tambahkan halaman Home
        '/update-status': (context) => UpdateStatusScreen(),  // Tambahkan halaman Update Status
        '/search': (context) => SearchScreen(),  // Tambahkan halaman Search
        '/chat': (context) => ChatScreen(),  // Tambahkan halaman Chat
        '/notifications': (context) => NotificationsScreen(),  // Tambahkan halaman Notifications
      },
    );
  }
}
