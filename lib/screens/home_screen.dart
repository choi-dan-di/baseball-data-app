import 'package:flutter/material.dart';
import '../widgets/game_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('오늘의 경기'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: const [
          GameCard(
            homeTeam: 'NC',
            awayTeam: 'LG',
            time: '18:30',
          ),
          GameCard(
            homeTeam: 'KIA',
            awayTeam: 'SSG',
            time: '18:30',
          ),
        ],
      ),
    );
  }
}