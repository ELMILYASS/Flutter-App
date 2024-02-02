import 'package:flutter/material.dart';
import 'package:flutter_app/bloc/counter.bloc.dart';
import 'package:flutter_app/pages/counter.page.dart';
import 'package:flutter_app/pages/home.page.dart';
import 'package:flutter_app/pages/product.page.dart';
import 'package:flutter_app/pages/themes/themes.dart';
import 'package:flutter_app/pages/widgets/product.details.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(FApp());
}

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      color: Colors.white,
      child: Card(
        color: Colors.red,
        child: SingleChildScrollView(
          child: Container(
            height: 150,
            padding: EdgeInsets.all(20),
            child: Text(
                "loremloremloremloremloremloremloremloremloremloremloremloreoremloremloremloremloremloremloremloremloremloremloremmloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremlmloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremlloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremlmloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremlorem"),
          ),
        ),
      ),
    );
  }
}

class FApp extends StatelessWidget {
  const FApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(),
        )
      ],
      child: MaterialApp(
          initialRoute: "/home",
          routes: {
            "/test": (context) => TestPage(),
            "/home": (context) => HomePage(),
            "/products": (context) => ProductPage(),
            "/counter": (context) => CounterPage(),
            "/productDetails": (context) => ProductDetails(
                productId:
                    ModalRoute.of(context)!.settings.arguments.toString()),
          },
          theme: MyAppTheme.themes[0]),
    );
  }
}
