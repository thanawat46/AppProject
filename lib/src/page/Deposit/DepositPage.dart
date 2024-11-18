import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Depositpage extends StatefulWidget {
  const Depositpage({super.key});

  @override
  State<Depositpage> createState() => _DepositpageState();
}

class _DepositpageState extends State<Depositpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ฝากเงิน"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "เลขสมาชิก"
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: "จำนวนเงิน"
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("ฝากเงิน"),
                      content: SizedBox(
                        width: 200.0,
                        height: 200.0,
                        child: QrImageView(
                          data: 'https://www.youtube.com/watch?v=u9OoLiXnjhM',
                          version: QrVersions.auto,
                          size: 200.0,
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("ปิด"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("ฝากเงิน"),
            )
          ],
        ),
      ),
    );
  }
}
