import 'package:flutter/material.dart';
import 'package:hauseful_flutter/components/formField.dart';
import 'package:hauseful_flutter/screens/map_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color(0xFF043C5C),
        toolbarHeight: 5,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 60, 20, 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'assets/images/logotipo.png',
                  scale: 1.6,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Faça o Login para continuar',
                  // style: Theme.of(context).textTheme.bodyMedium,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const Spacer(),
                CustomFormField(
                  inputController: emailController,
                  hintText: 'Insira seu e-mail',
                  icon: Icons.email_outlined,
                ),
                const SizedBox(height: 10),
                CustomFormField(
                  inputController: senhaController,
                  hintText: 'Insira sua senha',
                  icon: Icons.lock_outline_rounded,
                ),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MapScreen(),
                        ),
                      );
                    },
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.blue,
                      ),
                      foregroundColor: MaterialStatePropertyAll(
                        Colors.white,
                      ),
                    ),
                    child: const Text('LOGIN'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text('Esqueceu a senha?'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
