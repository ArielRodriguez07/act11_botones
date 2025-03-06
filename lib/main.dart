import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ariel Rodriguez Ceniceros',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Ariel Rodriguez Ceniceros'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(color: Colors.white), // Texto blanco
        ),
        centerTitle: true, // Centrar el título
        backgroundColor: Colors.purple, // Fondo morado
      ),
      body: Column(
        children: [
          // Número debajo del AppBar
          Container(
            width: double.infinity, // Ocupar todo el ancho
            padding: const EdgeInsets.all(10), // Espaciado interno
            color: Colors.purple, // Fondo morado
            child: const Text(
              "22308051280706",
              textAlign: TextAlign.center, // Centrar el texto
              style: TextStyle(
                color: Colors.white, // Texto blanco
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: HomeButtons(), // Usa el widget HomeButtons
            ),
          ),
        ],
      ),
    );
  }
}

class HomeButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildHomeButton("GO to home", Colors.purple, showIcon: true),
        _buildHomeButton("GO to home", Colors.grey.shade300,
            showIcon: true), // Gris claro
        _buildHomeButton("GO to home", Colors.black, showIcon: true),
        _buildHomeButton("GO to home", Colors.pink.shade200,
            showIcon: true), // Rosa claro

        // Botones adicionales sin ícono
        _buildHomeButton("GO to home", Colors.orange,
            showIcon: false), // Naranja
        _buildHomeButton("GO to home", Colors.teal,
            showIcon: false), // Verde azulado

        const SizedBox(
            height: 20), // Espacio entre los botones "GO to home" y "Elevated"

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // Lógica del botón TextButton
              },
              child: const Text("TextButton"),
            ),
            const SizedBox(width: 10), // Espacio entre los botones
            ElevatedButton(
              onPressed: () {
                // Lógica del botón Elevated
              },
              child: const Text("Elevated"),
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.red, // Usar backgroundColor en lugar de primary
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildHomeButton(String text, Color color, {bool showIcon = true}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (showIcon) // Mostrar ícono solo si showIcon es true
            Icon(
              Icons.home,
              color: color,
            ),
          if (showIcon) // Espacio solo si se muestra el ícono
            const SizedBox(width: 8.0),
          TextButton(
            onPressed: () {
              // Lógica del botón "GO to home"
            },
            child: Text(
              text,
              style: TextStyle(color: color),
            ),
          ),
        ],
      ),
    );
  }
}
