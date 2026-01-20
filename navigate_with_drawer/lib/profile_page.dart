import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Center(
          child: CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ),
        ),
        SizedBox(height: 15),

        Center(
          child: Text(
            "Mayur Kariya",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),

        Center(
          child: Text(
            "Flutter Developer | BCA Student",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        SizedBox(height: 30),

        // Details Section
        _buildProfileItem(Icons.email, "Email", "mayurkariya@gmail.com"),
        _buildProfileItem(Icons.phone, "Phone", "+91 95747 76164"),
        _buildProfileItem(Icons.location_on, "Location", "Rajkot, Gujarat"),
        _buildProfileItem(Icons.school, "College", "BCA Sem 6"),
      ],
    );
  }

  Widget _buildProfileItem(IconData icon, String title, String subtitle) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: Colors.blue),
        ),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
      ),
    );
  }
}
