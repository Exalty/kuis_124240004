import 'package:flutter/material.dart';
import 'login.dart';

class ProfilePage extends StatefulWidget {
  final String username;

  const ProfilePage({super.key, required this.username});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // Variabel untuk menyimpan warna background awal (Hijau)
  Color avatarColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            foregroundImage: const AssetImage("../data/logo_upn.png"),
            backgroundColor: avatarColor, // Menggunakan variabel warna
          ),
          const SizedBox(height: 8),
          Text("Halo ${widget.username}"),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              "“Saya bersumpah mengerjakan soal kuis ini dengan jujur dan tidak melakukan kecurangan apapun itu”",
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: avatarColor,
            ),
            child: const Text("Logout",),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
                (route) => false,
              );
            },
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    avatarColor = Colors.blue; // Ubah ke Biru
                  });
                },
                child: const Text("Biru"),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    avatarColor = Colors.red; // Ubah ke Merah
                  });
                },
                child: const Text("Merah"),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    avatarColor = Colors.purple; // Ubah ke Ungu
                  });
                },
                child: const Text("Ungu"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}