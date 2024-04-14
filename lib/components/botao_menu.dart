import 'package:flutter/material.dart';

class BotaoMenu extends StatelessWidget {
  final IconData icon;
  final String titulo;
  final void Function()? onPressed;
  const BotaoMenu({
    super.key,
    required this.icon,
    required this.titulo,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: const ButtonStyle(
        elevation: MaterialStatePropertyAll(0),
        backgroundColor: MaterialStatePropertyAll(Colors.transparent),
      ),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 20),
          Text(titulo),
        ],
      ),
    );
  }
}
