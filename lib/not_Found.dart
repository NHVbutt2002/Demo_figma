import 'package:flutter/material.dart';

class NotPayment2 extends StatefulWidget {
  const NotPayment2({super.key});

  @override
  State<NotPayment2> createState() => _NotPaymentState();
}

class _NotPaymentState extends State<NotPayment2> {
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
          Image.asset('assets/SC29.png'),
          const Column(
            children: [
              Text(" Payment method added",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 20,
              ),
              Text("You can buy the course now.\nContinue to payment.",
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
                  Navigator.of(context).pushNamed('/NotFound');
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffE3562A),
                ),
              )),
        ])));
  }
}
