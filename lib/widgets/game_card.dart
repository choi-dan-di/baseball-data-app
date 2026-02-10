import 'package:flutter/material.dart';
import '../models/team.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GameCard extends StatelessWidget {
  final Team homeTeam;
  final Team awayTeam;
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
            _teamRow(awayTeam),
            Text(
              time,
              style: const TextStyle(color: Colors.grey),
            ),
            _teamRow(homeTeam),
          ],
        ),
      ),
    );
  }

  Widget _teamRow(Team team) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: team.primaryColor,
            shape: BoxShape.circle,
          ),
        ),
        _teamLogo(team),
        const SizedBox(width: 8),
        Text(
          team.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _teamLogo(Team team) {
    switch (team.logoType) {
      case LogoType.png:
        return Image.asset(
          team.logoPath,
          width: 32,
          height: 32,
        );
      case LogoType.svg:
        return SvgPicture.asset(
          team.logoPath,
          width: 32,
          height: 32,
        );
    }
  }
}