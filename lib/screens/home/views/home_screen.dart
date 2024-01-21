import 'package:bijakberuang/screens/home/views/main_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double iconSize = 30;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF141414),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 3,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: iconSize),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_line_chart, size: iconSize),
            label: 'Statistik',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, size: iconSize),
            label: 'Notifikasi',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.tertiary,
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.primary,
              ],
            ),
          ),
          child: const Icon(Icons.add, size: iconSize, color: Colors.white),
        ),
      ),
      body: const MainScreen(),
    );
  }
}