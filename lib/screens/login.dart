import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Menambahkan logo berita di bagian atas
            Image.asset(
              'assets/images/logo berita game.png',  // Gantilah dengan path gambar Anda
              width: 200,  // Atur lebar logo sesuai kebutuhan
              height: 200, // Atur tinggi logo sesuai kebutuhan
            ),
            SizedBox(height: 10), // Memberikan jarak setelah logo
            // Menghilangkan teks Login
            TextField(
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 20),
            // Tombol Sign In
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/list'),
              child: Text('Sign In'),
            ),
            SizedBox(height: 10),
            // Tombol Forgot Password
            TextButton(
              onPressed: () {
                // Fungsi untuk mengarahkan ke halaman reset password
                Navigator.pushNamed(context, '/forgot-password');
              },
              child: Text('Forgot Password?', style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
