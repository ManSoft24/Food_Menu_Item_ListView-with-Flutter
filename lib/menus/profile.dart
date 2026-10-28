import 'package:aplikasi_list_makanan/components/profile_component/menu_tile_component.dart';
import 'package:aplikasi_list_makanan/components/profile_component/profile_header_section.dart';
import 'package:aplikasi_list_makanan/components/profile_component/profile_identity_component.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProfileHeaderSection(
              statusText: 'Hari ini dalam emoji...',
              imageUrl: 'assets/images/pfp_wa.jpeg',
            ),

            const SizedBox(height: 12),

            const ProfileIdentityComponent(
              name: 'Hilman',
              username: '@HilmanElfarabi',
            ),

            const SizedBox(height: 20),

            const MenuTileComponent(
              icon: Icons.diamond_outlined,
              title: 'Langganan',
              subtitle: 'Jelajahi keuntungan premium',
            ),
            const MenuTileComponent(
              icon: Icons.devices_outlined,
              title: 'Perangkat tertaut',
              subtitle: 'Gunakan WhatsApp di perangkat lain',
            ),
            const MenuTileComponent(
              icon: Icons.vpn_key_outlined,
              title: 'Akun',
              subtitle: 'Notifikasi keamanan, ganti nomor',
            ),
            const MenuTileComponent(
              icon: Icons.lock_outline,
              title: 'Privasi',
              subtitle: 'Akun diblokir, pesan sementara',
            ),
            const MenuTileComponent(
              icon: Icons.perm_contact_calendar_outlined,
              title: 'Daftar',
              subtitle: 'Kelola orang dan grup',
            ),
            const MenuTileComponent(
              icon: Icons.chat_outlined,
              title: 'Chat',
              subtitle: 'Riwayat obrolan, cadangan',
            ),
            const MenuTileComponent(
              icon: Icons.brightness_6_outlined,
              title: 'Tampilan',
              subtitle: 'Tema, wallpaper, ukuran font',
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
