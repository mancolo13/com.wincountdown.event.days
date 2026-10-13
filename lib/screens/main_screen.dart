import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'tabs/tab1_screen.dart';
import 'tabs/tab2_screen.dart';
import 'tabs/tab3_screen.dart';
import 'tabs/tab4_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    Tab1Screen(),
    Tab2Screen(),
    Tab3Screen(),
    Tab4Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) => setState(() => _currentIndex = index),
        backgroundColor: AppTheme.surfaceColor,
        indicatorColor: AppTheme.primaryColor.withValues(alpha: 0.2),
        destinations: [
        NavigationDestination(
          icon: const Icon(Icons.event_outlined),
          selectedIcon: const Icon(Icons.event, color: AppTheme.primaryColor),
          label: 'Events',
        ),
        NavigationDestination(
          icon: const Icon(Icons.alarm_on_outlined),
          selectedIcon: const Icon(Icons.alarm_on, color: AppTheme.primaryColor),
          label: 'Countdowns',
        ),
        NavigationDestination(
          icon: const Icon(Icons.star_outline),
          selectedIcon: const Icon(Icons.star, color: AppTheme.primaryColor),
          label: 'Milestones',
        ),
        NavigationDestination(
          icon: const Icon(Icons.settings_outlined),
          selectedIcon: const Icon(Icons.settings, color: AppTheme.primaryColor),
          label: 'Settings',
        ),

        ],
      ),
    );
  }
}
