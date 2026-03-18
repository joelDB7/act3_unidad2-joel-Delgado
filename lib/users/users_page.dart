import 'package:flutter/material.dart';
import 'package:myapp/widgets/generic_page.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PaginaGenerica(
      titulo: 'Usuarios',
      url: 'https://raw.githubusercontent.com/joelDB7/mis-imagenes/refs/heads/main/usu.png',
    );
  }
}
