import 'package:flutter/material.dart';
import '../widgets/game_card.dart';
import '../data/today_games.dart';
import '../models/team.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('오늘의 경기 ദ്ദി❁´ω`❁)'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: todayGames.length,
        itemBuilder: (context, index) {
          final game = todayGames[index];
          return GameCard(
            homeTeam: game['home'] as Team,
            awayTeam: game['away'] as Team,
            time: game['time'] as String,
          );
        },
        /*
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
        */
      ),
    );
  }
}