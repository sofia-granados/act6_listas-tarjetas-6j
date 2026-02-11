import 'package:flutter/material.dart';

void main() => runApp(const Appmascotas());

class Appmascotas extends StatelessWidget {
  const Appmascotas({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Empleados(),
    );
  }
}

class Empleados extends StatelessWidget {
  const Empleados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5DC), 
      appBar: AppBar(
        title: const Text(
          "chofy's pets 6j",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFD2B48C),
        leading: IconButton(
          icon: const Icon(Icons.camera_alt, color: Colors.white), // Cambiado a blanco para visibilidad
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.pets, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.medical_services, color: Color(0xFFEB96B2)),
            onPressed: () {},
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            CustomCard(
              titulo: 'Max - Golden Retriever',
              subtitulo: 'Especialista en siestas',
              imageUrl: 'https://raw.githubusercontent.com/sofia-granados/imagenes-para-flutter-6j-11-febrero-2026/refs/heads/main/perro1.png',
            ),
            CustomCard(
              titulo: 'Luna - Siamés',
              subtitulo: 'Experta en trepar',
              imageUrl: 'https://raw.githubusercontent.com/sofia-granados/imagenes-para-flutter-6j-11-febrero-2026/refs/heads/main/perro2.png',
            ),
            CustomCard(
              titulo: 'Rocky - Bulldog',
              subtitulo: 'Guardián de croquetas',
              imageUrl: 'https://raw.githubusercontent.com/sofia-granados/imagenes-para-flutter-6j-11-febrero-2026/refs/heads/main/perro3.png',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final String imageUrl;

  const CustomCard({
    super.key,
    required this.titulo,
    required this.subtitulo,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFD2B48C),
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white24, // Fondo por si la imagen tarda en cargar
          backgroundImage: NetworkImage(imageUrl),
        ),
        title: Text(titulo, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        subtitle: Text(subtitulo, style: const TextStyle(color: Colors.white70)),
        trailing: const Icon(Icons.favorite, color: Color(0xFFFF5E5E)),
      ),
    );
  }
}