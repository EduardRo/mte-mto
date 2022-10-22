import 'package:flutter/material.dart';
// import 'package:mate_mato/views/home_page.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Ionela Test'),
            accountEmail: const Text('Ionela.test@hotmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://www.mockofun.com/wp-content/uploads/2019/12/circle-profile-pic.jpg',
                  width: 190,
                  height: 190,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: NetworkImage(
                    'https://cutewallpaper.org/21/moon-hd-picture/Moon-And-Star-PNG-HD-Transparent-Moon-And-Star-HD.PNG-Images-.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => Navigator.pushNamed(
              context,
              '/',
            ),
          ),
          ListTile(
            leading: const Icon(Icons.mode_outlined),
            title: const Text('Teste'),
            onTap: () => Navigator.pushNamed(context, '/testepage'),
          ),
          ListTile(
            leading: const Icon(Icons.school),
            title: const Text('Teorie'),
            onTap: () => Navigator.pushNamed(context, '/teoriepage'),
          ),
          ListTile(
            leading: const Icon(Icons.task_alt),
            title: const Text('Rezultate'),
            onTap: () => Navigator.pushNamed(context, 'rezultatepage'),
          ),
          ListTile(
            leading: const Icon(Icons.stars),
            title: const Text('Premii'),
            onTap: () => {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Setari'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.tips_and_updates),
            title: const Text('Despre'),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}
