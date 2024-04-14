import 'package:flutter/material.dart';
import 'package:hauseful_flutter/components/comunicado_listtile.dart';
import 'package:hauseful_flutter/components/gaveta.dart';

class Comunicados extends StatefulWidget {
  const Comunicados({super.key});

  @override
  State<Comunicados> createState() => _ComunicadosState();
}

class _ComunicadosState extends State<Comunicados> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: const Color(0xFF043C5C),
        title: const Text('Comunicados'),
        foregroundColor: Colors.white,
      ),
      drawerScrimColor: Colors.transparent,
      drawer: const Gaveta(),
      // backgroundColor: Colors.grey[100],
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        physics: const BouncingScrollPhysics(),
        children: [
          ComunicadoListtile(
            titulo: 'Hauseful é destaque!',
            subtitulo: '14 mar. 09:03h',
            onTap: () {},
          ),
          const SizedBox(height: 10),
          ComunicadoListtile(
            titulo: 'Programação de pagamentos - Primeira Quinzena de Março/24',
            subtitulo: '15 mar. 18:45h',
            onTap: () {},
          ),
          const SizedBox(height: 10),
          ComunicadoListtile(
            titulo: 'Programação de pagamentos - Primeira Quinzena de Março/24',
            subtitulo: '14 mar. 11:30h',
            onTap: () {},
          ),
          const SizedBox(height: 10),
          ComunicadoListtile(
            titulo: 'Programação de pagamentos - Primeira Quinzena de Março/24',
            subtitulo: '13 mar. 10:00h',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
