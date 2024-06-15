import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget{
  const ProfileHeader({super.key, required this.name, required this.imagePath});

  final String name;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 20),
          CircleAvatar(
            radius: 17.5,
            backgroundImage: AssetImage(imagePath),
          ),
          const SizedBox(width: 15),
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
        ],
      ),
    );
  }

}