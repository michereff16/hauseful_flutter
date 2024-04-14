import 'package:flutter/material.dart';
import 'package:hauseful_flutter/components/gaveta.dart';

class HistoricoAgendamentos extends StatefulWidget {
  const HistoricoAgendamentos({super.key});

  @override
  State<HistoricoAgendamentos> createState() => _HistoricoAgendamentosState();
}

class _HistoricoAgendamentosState extends State<HistoricoAgendamentos> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: const Color(0xFF043C5C),
        title: const Text('Histórico de Agendamentos'),
        foregroundColor: Colors.white,
      ),
      drawerScrimColor: Colors.transparent,
      drawer: const Gaveta(),
      // backgroundColor: Colors.grey[50],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.event_busy_outlined,
                size: 80,
                color: Colors.grey.shade400,
              ),
              Text(
                'Sem histórico',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade600,
                ),
              ),
              Text(
                'Nenhum registro de atividades encontrado',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
