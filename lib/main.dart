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
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home_work), label: "home"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.web_rounded), label: "home"),
            BottomNavigationBarItem(
                icon: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const Icon(Icons.notifications),
                    Positioned(
                      bottom: 10,
                      left: 12,
                      child: Container(
                        width: 26,
                        height: 15,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "13",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    )
                  ],
                ),
                label: "home"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person), label: "home")
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
