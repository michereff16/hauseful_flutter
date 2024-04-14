import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hauseful_flutter/components/botao_menu.dart';
import 'package:hauseful_flutter/screens/comunicados_screen.dart';
import 'package:hauseful_flutter/screens/configuracoes_screen.dart';
import 'package:hauseful_flutter/screens/historico_screen.dart';
import 'package:hauseful_flutter/screens/map_screen.dart';
import 'package:hauseful_flutter/screens/missoes_screen.dart';
import 'package:hauseful_flutter/screens/rendimentos_screen.dart';

class Gaveta extends StatefulWidget {
  const Gaveta({
    super.key,
  });

  @override
  State<Gaveta> createState() => _GavetaState();
}

class _GavetaState extends State<Gaveta> {
  bool moneyVisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        shape: const RoundedRectangleBorder(),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              color: const Color(0xFF043C5C),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      debugPrint('Clicou');
                    },
                    enableFeedback: true,
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Icon(
                            Icons.person,
                            size: 35,
                            color: Color(0xFF043C5C),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Nome do Usuário',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'HOST    5,0 ⭐',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.white,
                    thickness: 0.6,
                  ),
                  Row(
                    children: [
                      const Text(
                        'GANHOS DO MÊS',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            moneyVisible = !moneyVisible;
                          });
                        },
                        icon: Icon(
                          moneyVisible ? Icons.visibility_off : Icons.visibility,
                          color: Colors.greenAccent,
                        ),
                      ),
                      Text(
                        moneyVisible ? '●●●●●●' : 'R\$ 100,00',
                        style: const TextStyle(color: Colors.greenAccent),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                BotaoMenu(
                  icon: Icons.location_on_outlined,
                  titulo: 'Ofertas de Agendamento',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const MapScreen(),
                      ),
                    );
                  },
                ),
                BotaoMenu(
                  icon: Icons.calendar_month,
                  titulo: 'Minha Agenda',
                  onPressed: () {},
                ),
                BotaoMenu(
                  icon: Icons.attach_money,
                  titulo: 'Meus Rendimentos',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const Rendimentos(),
                      ),
                    );
                  },
                ),
                BotaoMenu(
                  icon: Icons.history,
                  titulo: 'Histórico',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const HistoricoAgendamentos(),
                      ),
                    );
                  },
                ),
                BotaoMenu(
                  icon: Icons.rocket_launch_rounded,
                  titulo: 'Missões',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const Missoes(),
                      ),
                    );
                  },
                ),
                BotaoMenu(
                  icon: Icons.chat,
                  titulo: 'Comunicados',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const Comunicados(),
                      ),
                    );
                  },
                ),
                const Divider(),
                BotaoMenu(
                  icon: Icons.help_outline,
                  titulo: 'Ajuda',
                  onPressed: () {},
                ),
                BotaoMenu(
                  icon: Icons.gavel,
                  titulo: 'Termos de Uso',
                  onPressed: () {},
                ),
                BotaoMenu(
                  icon: Icons.settings_outlined,
                  titulo: 'Configurações',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const Configuracoes(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
