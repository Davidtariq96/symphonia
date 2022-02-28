import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symphonia/bloc/data_bloc.dart';
import 'package:symphonia/price_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          // currentIndex: currentPage,
          // onTap: (index) => setState(() => currentPage = index),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_work), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.web_rounded), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "home")
          ],
        ),
        body: BlocProvider<DataBloc>(
          create: (context) => DataBloc()..fetchCryptoPrices(),
          child: const PricePage(),
        ),
      ),
    );
  }
}
