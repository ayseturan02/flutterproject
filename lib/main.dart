import 'package:flutter/material.dart';

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
      theme: ThemeData(fontFamily: "Ayse"),
      home:Scaffold(
        appBar: AppBar(
            title: const Text("Widget Detail"),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          leading: const Text("Menu"),
        ),
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(value.toString()),
              const Text("ayse turan",style: TextStyle(
                fontFamily: "Ayse",
                fontSize:40,
                fontWeight: FontWeight.w900,
                letterSpacing: 10,
                color: Colors.teal,
              ),
              ),
            ],
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



