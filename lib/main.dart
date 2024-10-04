import 'package:flutter/material.dart';

import 'package:travel_app/constant/app_colors.dart';
import 'package:travel_app/widgets/graid_view_list_widget.dart';
import 'package:travel_app/widgets/header_widget.dart';
import 'package:travel_app/widgets/sub_header_widget.dart';
import 'package:sizer/sizer.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      maxMobileWidth: 772,
      builder: (p0, p1, p2) {
        print(p2);
        print(MediaQuery.of(context).size.width);
        return MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaler: const TextScaler.linear(1)),
          child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
              fontFamily: "inter",
            ),
            home: MyHomePage(title: 'Flutter Demo Home Page'),
          ),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: SingleChildScrollView(
          child: Column(
        children: [
          HeaderWidget(),
          SubHeaderWidget(),
          GraidViewListWidget(),
        ],
      )),
    );
  }
}
