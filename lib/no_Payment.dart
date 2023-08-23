import 'package:flutter/material.dart';

class NotPayment extends StatefulWidget {
  const NotPayment({super.key});

  @override
  State<NotPayment> createState() => _NotPaymentState();
}

class _NotPaymentState extends State<NotPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
          Container(
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios_rounded)),
                const SizedBox(
                  width: 100,
                ),
                const Text(" Payment",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ))
              ],
            ),
          ),
          Image.asset('assets/SC31.png'),
          const Column(
            children: [
              Text(" No payment method",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 20,
              ),
              Text("You don’t have any \n payment method",
                  style: TextStyle(fontSize: 14, color: Color(0xff78746D))),
            ],
          ),
          Container(
              height: 50,
              width: 400,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Continue',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.of(context).pushNamed('/Saved2');
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffE3562A),
                ),
              )),
        ])));
  }
}
