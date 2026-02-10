import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  final String homeTeam;
  final String awayTeam;
  final String time;

  const GameCard({
    super.key,
    required this.homeTeam,
    required this.awayTeam,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$homeTeam vs $awayTeam', 
              style: const TextStyle(
                fontSize: 16, 
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              time, 
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}