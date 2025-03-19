import 'package:flutter/material.dart';
import 'package:mad/routes/app_route.dart';
import 'package:mad/screens/book_detail_screen.dart';
import 'package:mad/utils/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: AppColor.appBackgroundColor,
      // leading: Icon(
      //   Icons.menu,
      //   color: AppColor.appTextColor,
      // ),
      actions: [
        Icon(Icons.notifications_off_outlined),
        Icon(Icons.account_circle)
      ],
    );

    final titleText = Text(
      "Hello, Guest",
      style: TextStyle(
          color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
    );
    final welcomeText = Text("What do you want to read today?");

    final welcomeColumn = Padding(
      padding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [titleText, welcomeText],
      ),
    );

    final sliderImage = Image.asset("assets/images/beltei_intake2.png");

    final bookImage = GestureDetector(
      child: Card(
        elevation: 3,
        child: Image.asset("assets/images/book.png"),
      ),
      onTap: () {
        // final route = MaterialPageRoute(
        //     builder: (context) => BookDetailScreen(
        //           title: "Khmer Book",
        //         ));
        // Navigator.push(context, route);

        AppRoute.key.currentState
            ?.pushNamed(AppRoute.bookDetailScreen, arguments: "Khmer Book");
      },
    );

    final bookList = Row(
      children: [bookImage],
    );

    final body = ListView(
      children: [welcomeColumn, bookList],
    );

    final homeScreen = Scaffold(
      appBar: appBar,
      body: body,
    );
    return homeScreen;
  }
}
