import 'package:flutter/material.dart';
import 'package:githun_search/app/model/user.dart';

class PerfilWidget extends StatelessWidget {
  PerfilWidget(this.user);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            minRadius: 45,
            maxRadius: 45,
            backgroundImage: NetworkImage(user.image) ?? null,
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name ?? '',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),
              Text(
                user.bio ?? 'Sem bio',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[400],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
