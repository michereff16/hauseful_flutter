import 'package:flutter/material.dart';
import 'package:hauseful_flutter/components/gaveta.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: const Color(0xFF043C5C),
        toolbarHeight: 5,
      ),
      drawerScrimColor: Colors.transparent,
      drawer: const Gaveta(),
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            const Center(
              child: Text(
                'Inserir MAPA',
              ),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: IconButton(
                onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                padding: const EdgeInsets.all(15),
                style: const ButtonStyle(
                  // backgroundColor: MaterialStatePropertyAll(Colors.blue),
                  iconColor: MaterialStatePropertyAll(Colors.black),
                ),
                icon: const Icon(
                  Icons.menu,
                ),
              ),
            ),
            Positioned(
              right: 20,
              top: size.height / 5,
              child: IconButton(
                onPressed: () {},
                padding: const EdgeInsets.all(15),
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue),
                  iconColor: MaterialStatePropertyAll(Colors.white),
                ),
                icon: const Icon(
                  Icons.assignment_outlined,
                ),
              ),
            ),
            Positioned(
              right: 20,
              top: size.height / 2.5,
              child: IconButton(
                onPressed: () {},
                padding: const EdgeInsets.all(15),
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue),
                  iconColor: MaterialStatePropertyAll(Colors.white),
                ),
                icon: const Icon(
                  Icons.chat,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
