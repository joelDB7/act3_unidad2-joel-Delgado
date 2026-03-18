import 'package:flutter/material.dart';
import 'package:myapp/widgets/generic_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PaginaGenerica(
      titulo: 'Inicio',
      url: 'https://raw.githubusercontent.com/joelDB7/mis-imagenes/refs/heads/main/relojdeare.jfif',
    );
  }
}
