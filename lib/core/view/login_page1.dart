import 'package:app_aviva_teste/core/view/login_page2.dart';
import 'package:flutter/material.dart';

class LoginPage1 extends StatefulWidget {
  const LoginPage1({super.key});

  @override
  State<LoginPage1> createState() => _LoginPage1State();
}

Widget banner() {
  return Stack(
    children: [
      Container(
        width: double.infinity,
        height: 400,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/banner.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        width: double.infinity,
        height: 400,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white.withOpacity(0.1),
              Colors.white.withOpacity(0.1),
              Colors.white.withOpacity(0.1),
              Colors.white.withOpacity(0.2),
              Colors.white.withOpacity(0.2),
              Colors.white.withOpacity(0.3),
              Colors.white.withOpacity(0.6),
              Colors.white.withOpacity(0.8),
              Colors.white,
            ],
          ),
        ),
      ),
      const Positioned(
        top: 250,
        left: 100,
        child: Image(
          image: AssetImage('assets/images/incasa.png'),
          width: 200,
          height: 200,
        ),
      )
    ],
  );
}

class _LoginPage1State extends State<LoginPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          banner(),
          const SizedBox(
            height: 46,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginPage2()));
            },
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xFF154734),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 80.0),
              child: Text(
                'Logar como proprietário',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginPage2()));
            },
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              side: const BorderSide(color: Color(0xFF154734), width: 1),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 87.0),
              child: Text(
                'Logar como convidado',
                style: TextStyle(
                  color: Color(0xFF154734),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Column(
            children: [
              const Text(
                'Primeiro acesso como convidado?',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Cadastre-se aqui.',
                  style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
