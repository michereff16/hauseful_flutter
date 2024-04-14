import 'package:flutter/material.dart';
import 'package:hauseful_flutter/components/gaveta.dart';

class Rendimentos extends StatefulWidget {
  const Rendimentos({super.key});

  @override
  State<Rendimentos> createState() => _RendimentosState();
}

class _RendimentosState extends State<Rendimentos> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: const Color(0xFF043C5C),
        title: const Text('Meus Rendimentos'),
        foregroundColor: Colors.white,
      ),
      drawerScrimColor: Colors.transparent,
      drawer: const Gaveta(),
      // backgroundColor: Colors.grey[50],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                width: size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: const Column(
                  children: [
                    Text(
                      'TOTAL DE GANHOS',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'R\$ 0,00',
                      style: TextStyle(
                        color: Colors.greenAccent,
                        fontWeight: FontWeight.w600,
                        fontSize: 42,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(10),
                width: size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const Text(
                      'NESTA SEMANA',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Text(
                      'R\$ 0,00',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 300,
                      color: Colors.red,
                      child: const Center(
                        child: Text('Inserir gráfico'),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Sábado'),
                            Text('Sexta-feira'),
                            Text('Quinta-feira'),
                            Text('Quarta-feira'),
                            Text('Hoje'),
                            Text('Segunda-feira'),
                            Text('Domingo'),
                          ],
                        ),
                        SizedBox(width: 20),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Column(
                            children: [
                              Text('R\$ 0,00'),
                              Text('R\$ 0,00'),
                              Text('R\$ 0,00'),
                              Text('R\$ 0,00'),
                              Text('R\$ 0,00'),
                              Text('R\$ 0,00'),
                              Text('R\$ 0,00'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const Text(
                      'MESES ANTERIORES',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Text(
                      'Clique no mês para ver o histórico',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.shade200,
                      ),
                      child: Icon(
                        Icons.calendar_month_rounded,
                        color: Colors.grey.shade500,
                        size: 38,
                      ),
                    ),
                    const Text('Sem ganhos nos\nmeses anteriores'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
