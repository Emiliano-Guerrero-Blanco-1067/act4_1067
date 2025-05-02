import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void _onAceptarPressed() {
    print("Aceptar presionado");
  }

  void _onLoginPressed() {
    print("Log In presionado");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 80,
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 120, color: Colors.black87),
              ),
              const SizedBox(height: 20),
              const Text(
                'Sign In',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(height: 20),
              const CustomTextField(label: 'correo'),
              const CustomTextField(label: 'usuario'),
              const CustomTextField(label: 'contraseña', obscureText: true),
              const SizedBox(height: 20),
              TextButton(
                onPressed: _onAceptarPressed,
                child: const Text(
                  'Aceptar',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: _onLoginPressed,
                child: const Text(
                  'Log In',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final bool obscureText;

  const CustomTextField({
    super.key,
    required this.label,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          obscureText: obscureText,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            labelText: label,
            labelStyle: const TextStyle(color: Colors.white),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
