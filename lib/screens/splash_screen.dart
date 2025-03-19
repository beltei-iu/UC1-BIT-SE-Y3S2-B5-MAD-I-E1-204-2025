import 'package:flutter/material.dart';
import 'package:mad/routes/app_route.dart';
import 'package:mad/screens/main_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 4. Control
    final appSlogan = Text(
      "The Future of Global Leader.",
      style: TextStyle(fontSize: 20),
    );

    final logo = Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Image.asset("assets/images/beltei.png"), appSlogan],
    ));

    final getStart = Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Container(
        height: 40,
        child: ElevatedButton(
            onPressed: () {
              //final route = MaterialPageRoute(builder: (context) => MainScreen());

              // // Option 1
              // Navigator.pushReplacement(context, route);
              // // Option 2
              // Navigator.of(context).push(route);

              //Navigator.pushReplacementNamed(context, AppRoute.mainScreen);

              AppRoute.key.currentState
                  ?.pushReplacementNamed(AppRoute.mainScreen);
            },
            child: Text("Get Start")),
      ),
    );

    // 3. Layout/Block
    final centerLayout = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [logo, getStart],
    );

    // 2. Create Screen
    final screen = Scaffold(
      body: Center(
        child: centerLayout,
      ),
    );

    return screen;
  }
}
