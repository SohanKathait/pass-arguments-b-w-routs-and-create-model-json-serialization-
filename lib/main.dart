import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Returning Data Demo"),
      ),
      body: Center(
          child:SeletionButton()),
    );
  }

}

class SeletionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      onPressed: (){
        _navigateAndDisplaySelection(context);
      },
      child:Text("PICK AN OPTION , ANY OPTION!"),
    );
  }

  void _navigateAndDisplaySelection(BuildContext context) async {

    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context)=>SelectionScreen()),
      );
    Scaffold.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(content:Text("$result"))

    );
  }

}

class SelectionScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick an option'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:<Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: (){
                  Navigator.pop(context,'Yep!');
                },
                child: Text('Yep!'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: (){
                  Navigator.pop(context,"Nop!");
                },
                child: Text('Nope.'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}