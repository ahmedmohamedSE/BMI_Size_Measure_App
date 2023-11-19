import 'package:flutter/material.dart';

import 'home.dart';

class MyResult extends StatelessWidget {
  const MyResult({
    Key? key,
    required this.result,
    required this.isMale,
    required this.age,
  }) : super(key: key);

  final double result;
  final bool isMale;
  final int age;

  String get resultPhrase {
    String resultText = '';
    if (result >= 30)
      resultText = 'Obese';
    else if (result > 25 && result < 30)
      resultText = 'Overweight';
    else if (result >= 18.5 && result <= 24.9)
      resultText = 'Normal';
    else
      resultText = 'Thin';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("YOUR BMI RESULT"),
        centerTitle: true,
        backgroundColor: const Color(0xff0F1538),
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff272D4D),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Gender: ${isMale ? 'Male' : 'Female'}',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      'Result: ${result.toStringAsFixed(1)}',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      'Healthiness: $resultPhrase',
                      style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Age: $age',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  fixedSize: Size(MediaQuery.of(context).size.width * 0.9, 60),
                  primary: const Color(0XFFFF0C63),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  "Re-Check BMI",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 20
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xff0F1538),
    );
  }
}
