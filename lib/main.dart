import 'package:flutter/material.dart';
import 'package:flutterproject/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const WidgetDetail());
}

class WidgetDetail extends StatefulWidget{
  const WidgetDetail({super.key});

  @override
  State<WidgetDetail> createState() => _WidgetDetailState();
}

class _WidgetDetailState extends State<WidgetDetail> {
  int value = 0;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.acmeTextTheme()),
      home:Scaffold(
        appBar: AppBar(
            title: const Text("Widget Detail"),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          leading: const Text("Menu"),
        ),
        body: const Center(
          child: Image(
            image: AssetImage("lib/assets/images/photo1.jpg"), //networkimage(url)
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              value=value+1;
            });
          },
          child: const Text("+"),
        ),
      ),
    );
  }
}



