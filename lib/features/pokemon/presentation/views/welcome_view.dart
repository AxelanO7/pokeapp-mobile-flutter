import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Poke App',
              style: TextStyle(
                fontSize: 24,
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(height: 40),
            Image.asset(
              'assets/images/illust_pokemon.png',
              height: 200,
              width: 200,
            ),
            SizedBox(height: 40),
            Container(
              width: MediaQuery.of(context).size.width - 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pokemon');
                },
                child: Text('Start'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
