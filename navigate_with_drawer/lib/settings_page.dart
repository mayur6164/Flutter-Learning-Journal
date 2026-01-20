import 'package:flutter/material.dart';
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Text("General", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue)),
        SwitchListTile(
          value: false,
          onChanged: (val) {},
          title: Text("Dark Mode"),
          secondary: Icon(Icons.dark_mode),
        ),
        SwitchListTile(
          value: true,
          onChanged: (val) {},
          title: Text("Notifications"),
          secondary: Icon(Icons.notifications),
        ),
        Divider(),
        Text("Account", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue)),
        ListTile(
          title: Text("Change Password"),
          leading: Icon(Icons.lock),
          trailing: Icon(Icons.arrow_forward_ios, size: 16),
        ),
        ListTile(
          title: Text("Privacy Policy"),
          leading: Icon(Icons.privacy_tip),
          trailing: Icon(Icons.arrow_forward_ios, size: 16),
        ),
      ],
    );
  }
}