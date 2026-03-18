
import 'package:flutter/material.dart';
import 'package:myapp/widgets/drawer.dart';

class PaginaGenerica extends StatelessWidget {
  final String titulo;
  final String url;

  const PaginaGenerica({super.key, required this.titulo, required this.url});

  @override
  Widget build(BuildContext context) {
    const Color azulCieloFuerte = Color(0xFF0091EA);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          titulo,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        // Icono de hamburguesa en blanco
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: azulCieloFuerte,
        centerTitle: true,
      ),
      drawer: const MiDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagen de 200x200 con bordes redondeados
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                url,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.broken_image, size: 100, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 30),
            // Título de la sección en azul fuerte y negrita
            Text(
              "Sección: $titulo",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: azulCieloFuerte,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
