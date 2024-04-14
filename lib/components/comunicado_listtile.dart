import 'package:flutter/material.dart';

class ComunicadoListtile extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final void Function()? onTap;
  const ComunicadoListtile({
    super.key,
    required this.titulo,
    required this.subtitulo, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      tileColor: Colors.white,
      title: Text(
        titulo,
        style: const TextStyle(
          color: Color(0xFF043C5C),
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
      subtitle: Text(subtitulo),
      dense: true,
      onTap: onTap,
    );
  }
}
