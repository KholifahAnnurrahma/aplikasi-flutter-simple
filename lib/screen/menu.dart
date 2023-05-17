import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 288,
        height: double.infinity,
        color: Color(0xFF00BCD4),
        child: SafeArea(
          child: Column(
            children: [
              const InfoCard(
                name: "Kuiv",
                user: "@autophilennh_",
              ),
              ListTitle(
                  iconData: Icons.house_rounded,
                  title: "Home",
                  onTilePressed: () {}),
              ListTitle(
                  iconData: Icons.view_column_rounded,
                  title: "Kategori",
                  onTilePressed: () {}),
              ListTitle(
                  iconData: Icons.calendar_month_rounded,
                  title: "Kalender",
                  onTilePressed: () {}),
              ListTitle(
                  iconData: Icons.settings,
                  title: "Pengaturan",
                  onTilePressed: () {}),
              ListTitle(
                  iconData: Icons.app_registration_rounded,
                  title: "Buat Akun",
                  onTilePressed: () {}),
              ListTitle(
                  iconData: Icons.logout_rounded,
                  title: "Log Out",
                  onTilePressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

class ListTitle extends StatelessWidget {
  const ListTitle({
    super.key,
    required this.iconData,
    required this.title,
    required this.onTilePressed,
  });

  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData, color: Colors.white),
      title: Text(
        title,
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.name,
    required this.user,
  });

  final String name, user;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.person_2_rounded,
          color: Color(0xFF00BCD4), 
        ),
      ),
      title: Text(
        name,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        user,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
