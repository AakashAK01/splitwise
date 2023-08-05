import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'billsplitscreen.dart';

class OpenScreen extends StatefulWidget {
  const OpenScreen({super.key});

  @override
  State<OpenScreen> createState() => _OpenScreenState();
}

class _OpenScreenState extends State<OpenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 80, 8, 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 500,
                child: Lottie.asset('assets/bill.json'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(42, 8, 8, 8),
                child: Text("The easiet way to share expenese with friends",
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500)),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BillSplitScreen()),
                  );
                },
                child: Container(
                  width: 280,
                  height: 42,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Let's Start",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 3,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}