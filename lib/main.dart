import 'package:flutter/material.dart';



void main() {

  runApp(MaterialApp(
    home: MyFirstRoute(),
  ));

}

//st

class MyFirstRoute extends StatelessWidget {

  const MyFirstRoute({super.key});



  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text("Primer route!"),

      ),

      body: Center(

        child: ElevatedButton(

          child: Text("Ir al 2do route..."),

          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MySecondRoute()),
            );
          },

        ),

      ),

    );

  }

}

class MySecondRoute extends StatelessWidget {
  const MySecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text("Second route!"),

      ),

      body: Center(

        child: ElevatedButton(

          child: Text("Retornar..."),

          onPressed: (){
            Navigator.pop(context);

          },

        ),

      ),

    );
  }
}
