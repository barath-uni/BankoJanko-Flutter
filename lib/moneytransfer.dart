import 'package:flutter/material.dart';

class MoneyTransfer extends StatefulWidget {
  @override
  _MoneyTransferState createState() => _MoneyTransferState();
}

class _MoneyTransferState extends State<MoneyTransfer> {
  final accnumber = TextEditingController();
  final amount = TextEditingController();
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
              Text("Transfer Money", style: TextStyle(fontWeight: FontWeight.bold)),
              Spacer(),
              Container(
                child: Column(
                  children: [
                    Text("*Enter Acc Number Correctly", ),
                    TextField(
                      controller: accnumber,
                      decoration: InputDecoration(
                        labelText: "Destination Acc Number",
                        border: OutlineInputBorder()
                    ),
                    ),
                    TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Re-Enter Acc Number",
                            border: OutlineInputBorder()
                        )
                    ),
                    TextField(
                      controller: amount,
                        decoration: InputDecoration(
                            labelText: "Amount to Send",
                            border: OutlineInputBorder()
                        )
                    ),
                    ElevatedButton(
                        onPressed: (){
                          print(accnumber.text);
                          print(amount.text);
                        },
                        child: Text("Send"))
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
