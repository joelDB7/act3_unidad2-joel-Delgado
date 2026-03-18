import 'package:flutter/material.dart';
import 'package:myapp/widgets/generic_page.dart';

class AlarmsPage extends StatelessWidget {
  const AlarmsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PaginaGenerica(
      titulo: 'Alarmas',
      url: 'https://raw.githubusercontent.com/joelDB7/mis-imagenes/refs/heads/main/tilin.jfif',
    );
  }
}
