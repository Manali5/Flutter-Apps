import 'package:flutter/material.dart';

double score = 0.0;

void main() {
  runApp(MaterialApp(
    home : FirstScreen(),
  ));
}

class FirstScreen extends StatefulWidget {

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  double rating = 1.0;
  void _updateScore(){
    setState(() {
      score = rating;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('Did you find the items that you were looking for?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25.0
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
                child: Row(
                  children: [
                    Text('1'),
                    Expanded(
                      child: Slider(
                        value: rating,
                        min: 1,
                        max: 5,
                        divisions: 4,
                        label: rating.round().toString(),
                        onChanged: (newRating){
                          setState(() => rating = newRating);
                        },
                      ),
                    ),
                    Text('5'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: ElevatedButton(
                child: Text('Next'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondScreen()),
                  );
                  _updateScore();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

}

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  double rating = 1.0;
  void _updateScore2() {
    setState(() {
      score = score + rating;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('How was the customer service?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25.0
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
                child: Row(
                  children: [
                    Text('1'),
                    Expanded(
                      child: Slider(
                        value: rating,
                        min: 1,
                        max: 5,
                        divisions: 4,
                        label: rating.round().toString(),
                        onChanged: (newRating){
                          setState(() => rating = newRating);
                        },
                      ),
                    ),
                    Text('5'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: ElevatedButton(
                child: Text('Next'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ThirdScreen()),
                  );
                  _updateScore2();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  double rating = 1.0;
  void _updateScore(){
    setState(() {
      score = score + rating;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('How was the santitaion?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25.0
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
                child: Row(
                  children: [
                    Text('1'),
                    Expanded(
                      child: Slider(
                        value: rating,
                        min: 1,
                        max: 5,
                        divisions: 4,
                        label: rating.round().toString(),
                        onChanged: (newRating){
                          setState(() => rating = newRating);
                        },
                      ),
                    ),
                    Text('5'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: ElevatedButton(
                child: Text('Next'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FourthScreen()),
                  );
                  _updateScore();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

}

class FourthScreen extends StatefulWidget {
  @override
  _FourthScreenState createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  double rating = 1.0;
  void _updateScore(){
    setState(() {
      score = score + rating;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('How was the lighting?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25.0
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
                child: Row(
                  children: [
                    Text('1'),
                    Expanded(
                      child: Slider(
                        value: rating,
                        min: 1,
                        max: 5,
                        divisions: 4,
                        label: rating.round().toString(),
                        onChanged: (newRating){
                          setState(() => rating = newRating);
                        },
                      ),
                    ),
                    Text('5'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: ElevatedButton(
                child: Text('Next'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FifthScreen()),
                  );
                  _updateScore();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

}

class FifthScreen extends StatefulWidget {
  @override
  _FifthScreenState createState() => _FifthScreenState();
}

class _FifthScreenState extends State<FifthScreen> {
  double rating = 1.0;
  void _updateScore(){
    setState(() {
      score = score + rating;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('How was the general cleanliness?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25.0
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
                child: Row(
                  children: [
                    Text('1'),
                    Expanded(
                      child: Slider(
                        value: rating,
                        min: 1,
                        max: 5,
                        divisions: 4,
                        label: rating.round().toString(),
                        onChanged: (newRating){
                          setState(() => rating = newRating);
                        },
                      ),
                    ),
                    Text('5'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: ElevatedButton(
                child: Text('Next'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SixthScreen()),
                  );
                  _updateScore();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

}

class SixthScreen extends StatefulWidget {
  @override
  _SixthScreenState createState() => _SixthScreenState();
}

class _SixthScreenState extends State<SixthScreen> {
  double rating = 1.0;
  void _updateScore(){
    setState(() {
      score = score + rating;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('How likely are you to recommend us to your friends?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25.0
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
                child: Row(
                  children: [
                    Text('1'),
                    Expanded(
                      child: Slider(
                        value: rating,
                        min: 1,
                        max: 5,
                        divisions: 4,
                        label: rating.round().toString(),
                        onChanged: (newRating){
                          setState(() => rating = newRating);
                        },
                      ),
                    ),
                    Text('5'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: ElevatedButton(
                child: Text('Next'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LastScreen()),
                  );
                  _updateScore();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

}


class LastScreen extends StatelessWidget {
  const LastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: (score>=0.0 && score <=10.0)? Text(
                  'We are sorry for the inconvenience.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30,
                    color: Colors.red,),
                )  : (score>=11.0 && score <=20.0)? Text(
                  'Hope we serve you better next time.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30,
                    color: Colors.yellow,),
                ): Text(
                  'We hope you come back next time.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30,
                    color: Colors.green,),)
            ),
            SizedBox(height: 25),
            ElevatedButton(
              child: Text('Refresh'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FirstScreen()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}