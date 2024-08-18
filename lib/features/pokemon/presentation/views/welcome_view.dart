import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the Poke App',
              style: TextStyle(
                fontSize: 24,
                color: Colors.blueGrey,
              ),
            ),
            const SizedBox(height: 40),
            Image.asset(
              'assets/images/illust_pokemon.png',
              height: 200,
              width: 200,
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pokemon');
                },
                child: const Text('Start'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
