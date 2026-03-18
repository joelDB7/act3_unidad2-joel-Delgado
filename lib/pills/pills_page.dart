import 'package:flutter/material.dart';
import 'package:myapp/widgets/generic_page.dart';

class PillsPage extends StatelessWidget {
  const PillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PaginaGenerica(
      titulo: 'Pastillas',
      url: 'https://raw.githubusercontent.com/joelDB7/mis-imagenes/refs/heads/main/ketorolaco.jfif',
    );
  }
}
