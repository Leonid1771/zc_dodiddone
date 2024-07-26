import 'package:flutter/material.dart';
import 'package:zc_dodiddone/theme/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    // Задачи
    const Center(child: Text('Задачи')),
    // Сегодня
    const Center(child: Text('Сегодня')),
    // Профиль
    const Center(child: Text('Профиль')),
    // Выполнено
    const Center(child: Text('Выполнено')),
  ];

  @override
  Widget build(BuildContext context) {
    final primaryColor = DoDidDoneTheme.lightTheme.colorScheme.primary;
    final secondaryColor = DoDidDoneTheme.lightTheme.colorScheme.secondary;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
            colors: [secondaryColor, primaryColor], // Градиент от secondary к primary
            stops: const [0.1, 0.9], // Основной цвет занимает 90% пространства
          ),
        ),
        child: _screens[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Задачи',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Сегодня',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle),
            label: 'Выполнено',
          ),
        ],
      ),
    );
  }
}
