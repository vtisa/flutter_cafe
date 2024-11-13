import 'package:flutter/material.dart';
import 'dart:io';
import 'alerts.dart';

class LoginCafeScreen extends StatelessWidget {
  LoginCafeScreen({super.key});

  final Color plomoColor = Colors.grey.shade500;
  final Color marronColor = Colors.brown;
  final Alerts alerts = Alerts(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Cafe',
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Nuestro mejor café del mundo',
                  style: TextStyle(
                    fontSize: 15,
                    color: plomoColor,
                  ),
                ),
              ],
            ),
            Image.asset('assets/vida.gif'),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () => Platform.isAndroid
                      ? alerts.displayDialogAndroidLogin(context)
                      : alerts.displayDialogIOSLogin(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: marronColor,
                    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text(
                    'Iniciar Sesión',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => Platform.isAndroid
                      ? alerts.displayDialogAndroidRegister(context)
                      : alerts.displayDialogIOSRegister(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200,
                    side: const BorderSide(color: Colors.brown),
                    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text(
                    'Registrarte',
                    style: TextStyle(color: Colors.brown),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
