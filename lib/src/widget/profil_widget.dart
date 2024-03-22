import 'package:flutter/material.dart';

class ProfilWidget extends StatefulWidget {
  const ProfilWidget({super.key});

  @override
  State<ProfilWidget> createState() => _ProfilWidgetState();
}

class _ProfilWidgetState extends State<ProfilWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text('Profile', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Color(0xFFC82A3C)],
                stops: [0.5, 1])),
        child: ListView(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('Your_Image_URL'),
            ),
            const SizedBox(height: 20),
            const Text('User Name',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20)),
            const Divider(color: Colors.white54),
            _buildUserInfo('Email', 'user@example.com'),
            _buildUserInfo('Phone', '+1234567890'),
            _buildUserInfo('Date of Birth', '01/01/1990'),
            const Divider(color: Colors.white54),
            _buildActionTile(Icons.edit, 'Edit Profile', () {}),
            _buildActionTile(Icons.logout, 'Log Out', () {}),
            _buildActionTile(Icons.history, 'Transaction History', () {}),
            SwitchListTile(
              title: const Text('Dark Mode',
                  style: TextStyle(color: Colors.white)),
              value: true,
              onChanged: (bool value) {},
              secondary: const Icon(Icons.dark_mode, color: Colors.white),
            ),
            const Divider(color: Colors.white54),
          ],
        ),
      ),
    );
  }

  Widget _buildUserInfo(String title, String value) {
    return ListTile(
      title: Text(title, style: const TextStyle(color: Colors.white70)),
      subtitle: Text(value, style: const TextStyle(color: Colors.white)),
    );
  }

  Widget _buildActionTile(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      onTap: onTap,
    );
  }
}
