import 'package:flutter/material.dart';

class BmiCalculations extends StatefulWidget {
  final int value;

  const BmiCalculations({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  State<BmiCalculations> createState() => _BmiCalculationsState();
}

class _BmiCalculationsState extends State<BmiCalculations> {
  String printText(int num) {
    if (num < 16) {
      return 'Severe Thinness';
    } else if (num >= 16 && num < 17) {
      return 'Moderate Thinness';
    } else if (num >= 17 && num < 18.5) {
      return 'Mild Thinness';
    } else if (num >= 18.5 && num < 25) {
      return 'Normal';
    } else if (num >= 25 && num < 30) {
      return 'Overweight';
    } else if (num >= 30 && num < 35) {
      return 'Obese Class I';
    } else if (num >= 35 && num < 40) {
      return 'Obese Class II	';
    } else {
      return 'Obese Class III	';
    }
  }

  String printStatus(int num) {
    if (num < 18.5) {
      return 'Try your best to reach the body you desire';
    } else if (num >= 18.5 && num <= 25) {
      return 'You have a normal body weight, Good job';
    } else {
      return 'Try your best to reach the body you desire';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo[900],
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.indigo[900],
        child: Column(
          children: [
            const Text(
              'Your result',
              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.indigo[800],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          printText(widget.value).toUpperCase(),
                          style: const TextStyle(
                            fontSize: 30,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        '${widget.value}',
                        style: const TextStyle(
                          fontSize: 80,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          printStatus(widget.value),
                          style: const TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.red[800],
              child: MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'RE-CALCULATE YOUR BMI',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white60,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
