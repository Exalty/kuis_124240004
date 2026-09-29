import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';

class ProfilePage extends StatelessWidget {

  void _confirmLogout(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Logout'),
        content: const Text('Apakah Anda yakin ingin keluar?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Batal'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
            child: const Text('Keluar', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E7D32),
        elevation: 0,
        title: const Text(
          'Haloo Barkah',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout, color: Colors.white),
            tooltip: 'Logout',
            onPressed: () => _confirmLogout(context),
          ),
          IconButton(
            icon: const Icon(Icons.circle),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage()
                  )
              );
            }
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          // padding: const EdgeInsets.all(18),
          child: Column(
            spacing: 12,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            
            // itemBuilder: 
            children: [
              CircleAvatar(backgroundColor: Colors.green),
              Text("Muhammad Barkah Ramadhan"),
              Text("Saya bersumpah mengerjakan soal kuis ini dengan jujur dan tidak melakukan kecurangan apapun itu")
            ]
          )
          
        )
      ),
    );
  }
}