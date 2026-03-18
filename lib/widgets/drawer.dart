
import 'package:flutter/material.dart';

class MiDrawer extends StatelessWidget {
  const MiDrawer({super.key});

  // Definición del color Azul Cielo Fuerte
  final Color azulCieloFuerte = const Color(0xFF0091EA);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: azulCieloFuerte),
            currentAccountPicture: const CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  'https://raw.githubusercontent.com/joelDB7/mis-imagenes/refs/heads/main/relojdeare.jfif'),
            ),
            // Nombre de la empresa en color NEGRO
            accountName: const Text(
              "A Tiempo",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            // Datos de contacto ficticios
            accountEmail: const Text(
              "Av. Siempre Viva 742, Ciudad Central\nTel: +52 555-0123-456\ncontacto@atiempo.com",
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
          _crearItem(context, Icons.home, "Inicio", '/'),
          _crearItem(context, Icons.medication, "Pastillas", '/pastillas'),
          _crearItem(context, Icons.people, "Usuarios", '/usuarios'),
          _crearItem(context, Icons.hourglass_empty, "Alarmas", '/alarmas'),
        ],
      ),
    );
  }

  // Widget auxiliar para los elementos del menú
  Widget _crearItem(BuildContext context, IconData icono, String texto, String ruta) {
    return ListTile(
      leading: Icon(icono, color: azulCieloFuerte),
      title: Text(
        texto,
        style: TextStyle(color: azulCieloFuerte, fontWeight: FontWeight.w600),
      ),
      onTap: () {
        Navigator.pushReplacementNamed(context, ruta);
      },
    );
  }
}
