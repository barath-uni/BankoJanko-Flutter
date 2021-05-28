import 'package:banko_jannko/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'BankoJanko'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Spacer(),
            Image(image: AssetImage("asset/pnglogo.png"), height: 100, width: 100,),
            Spacer(),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder()
              ),
            ),Spacer(),
            TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder()
                )
            ),
            Spacer(),
            ElevatedButton(
                onPressed: (){
                  print(usernameController.text);
                  print(passwordController.text);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: Text("Submit")),
            Spacer(),
            Spacer()
          ],
        ),
      ),
    );
  }
}
