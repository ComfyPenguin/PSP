import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contador de zambombas'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Dale a la zambomba!!', style: TextStyle(fontSize: 30 , color: Color.fromARGB(255, 0, 0, 0))),
              Text('$contador', style: (contador > 0) ? 
              TextStyle(fontSize: 32, color: Colors.greenAccent) : 
              (contador == 0) ? 
              TextStyle(fontSize: 32, color: const Color.fromARGB(255, 0, 0, 0)) :
              TextStyle(fontSize: 32, color: Colors.redAccent))
            ],
          )
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
          onPressed: (){
            setState(() {
            contador++;
            });
          },
          
          child: Icon(Icons.sports_kabaddi), 
          ),
          FloatingActionButton(
          onPressed: (){
            setState(() {
            contador--;
            });
          },
          child: Icon(Icons.exposure_minus_1_sharp), 
          ),
          FloatingActionButton(
          onPressed: (){
            setState(() {
            contador = 0;
            });
          },
          child: Icon(Icons.auto_fix_off), 
          ),
          ],
        )
        
      ),
    );
  }
}