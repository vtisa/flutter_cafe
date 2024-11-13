import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Alerts {
  final Color dialogBackgroundColor = Colors.brown.shade100;
  final Color buttonColor = Colors.brown.shade600;

  // Alerta estilizada para Android en inicio de sesión
  void displayDialogAndroidLogin(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: dialogBackgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Row(
          children: [
            Icon(Icons.login, color: Colors.brown),
            SizedBox(width: 8),
            Text(
              'Inicio de Sesión',
              style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Iniciaste sesión correctamente',
              style: TextStyle(color: Colors.black87),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: buttonColor,
            ),
            child: const Text('OK', style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }

  // Alerta estilizada para iOS en inicio de sesión
  void displayDialogIOSLogin(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: const Row(
          children: [
            Icon(CupertinoIcons.person_circle, color: CupertinoColors.activeOrange),
            SizedBox(width: 8),
            Text('Inicio de Sesión'),
          ],
        ),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Iniciaste sesión correctamente'),
          ],
        ),
        actions: [
          CupertinoDialogAction(
            onPressed: () => Navigator.pop(context),
            isDefaultAction: true,
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  // Alerta estilizada para Android en registro
  void displayDialogAndroidRegister(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: dialogBackgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Row(
          children: [
            Icon(Icons.check_circle, color: Colors.green),
            SizedBox(width: 8),
            Text(
              'Registro Exitoso',
              style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Gracias por tu registro. Ahora podrás iniciar sesión con confianza',
              style: TextStyle(color: Colors.black87),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: buttonColor,
            ),
            child: const Text('OK', style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }

  // Alerta estilizada para iOS en registro
  void displayDialogIOSRegister(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: const Row(
          children: [
            Icon(CupertinoIcons.checkmark_seal_fill, color: CupertinoColors.activeGreen),
            SizedBox(width: 8),
            Text('Registro Exitoso'),
          ],
        ),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Gracias por tu registro. Ahora podrás iniciar sesión con confianza'),
          ],
        ),
        actions: [
          CupertinoDialogAction(
            onPressed: () => Navigator.pop(context),
            isDefaultAction: true,
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
