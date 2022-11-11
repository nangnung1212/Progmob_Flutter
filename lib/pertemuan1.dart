import 'package:flutter/material.dart';

class Pertemuan1 extends StatefulWidget {
  const Pertemuan1({super.key, required this.title});


  final String title;

  @override
  State<Pertemuan1> createState() => _Pertemuan1State();
}

class _Pertemuan1State extends State<Pertemuan1> {
  int _counter = 2;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          TextFormField(
            decoration: new InputDecoration(
              labelText: "Test Input",
              hintText: "Teks yang akan diinput formatnya adalah sbg",
            ),
          ),
            Padding(
                padding: EdgeInsets.all(16.0),
            ),
            TextFormField(
              decoration: new InputDecoration(
                labelText: "Test Input 2",
                hintText: "Teks yang akan diinput formatnya adalah sbg",
                border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5),
                )
              ),
            ),
            ElevatedButton(
              onPressed: () {  },
              child: Text(
                "Simpan",
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            )
          ],
        ),
      ),
      //floatingActionButton: FloatingActionButton(
        //onPressed: _incrementCounter,
        //tooltip: 'Increment',
        //child: const Icon(Icons.add),
      //), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}