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
        _buildHomeButton("GO to home", Colors.purple,
            showIcon: true, hasShadow: false), // Botón 1
        _buildHomeButton("GO to home", Colors.grey.shade300,
            showIcon: true, hasShadow: true), // Botón 2 (con sombra gris)
        _buildHomeButton("GO to home", Colors.black,
            showIcon: true, hasShadow: false), // Botón 3
        _buildHomeButton("GO to home", Colors.pink.shade200,
            showIcon: true, hasShadow: true), // Botón 4 (con sombra gris)
        _buildHomeButton("GO to home", Colors.orange,
            showIcon: false, hasShadow: false), // Botón 5
        _buildHomeButton("GO to home", Colors.teal,
            showIcon: false, hasShadow: true), // Botón 6 (con sombra gris)

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

  Widget _buildHomeButton(String text, Color color,
      {bool showIcon = true, bool hasShadow = false}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: hasShadow
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(8), // Bordes redondeados
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Sombra gris
                  spreadRadius: 1, // Reducir la extensión de la sombra
                  blurRadius: 3, // Reducir el difuminado de la sombra
                  offset: const Offset(0, 2), // Desplazamiento de la sombra
                ),
              ],
            )
          : null,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), // Bordes redondeados
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min, // Ajustar el ancho al contenido
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
      ),
    );
  }
}
