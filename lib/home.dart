import 'package:banko_jannko/moneytransfer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final someitem = [1, 2];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),

      ),
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Text("Spend History"),
            Expanded(child: SizedBox(
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 160.0,
                    color: Colors.red,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.green,
                  )
                ],
              ),
            )),
            Spacer(),
            Container(
              child: Column(
                children: [
                  Text("Credit Card Balance"),
                  Card(
                    child: Column(
                      children: [
                        const ListTile(
                          leading: Icon(Icons.money),
                          title: Text("Credit Balance = "),
                          subtitle: Text("Money Paid Off Till Now = "),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed: (){

                                },
                                child: Text("Pay Monthly Balance"))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
            Container(
              child: Column(
                children: [
                  Text("Transfer Money"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>MoneyTransfer()));
                          },
                          child: Text("Same Bank")),
                      ElevatedButton(
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>MoneyTransfer()));
                          },
                          child: Text("Other Bank"))
                    ],
                  )
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      )
    );
  }
}
