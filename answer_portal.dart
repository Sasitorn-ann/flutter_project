import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PortalPage(),
  ));
}

class PortalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Answer'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildAnswerButton(context, 'Answer1'),
            _buildAnswerButton(context, 'Answer2'),
            _buildAnswerButton(context, 'Answer3'),
            _buildAnswerButton(context, 'Answer4'),
          ],
        ),
      ),
    );
  }

  Widget _buildAnswerButton(BuildContext context, String answer) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AnswerPage(answer: answer),
            ),
          );
        },
        child: Text(answer),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}

class AnswerPage extends StatelessWidget {
  final String answer;

  AnswerPage({required this.answer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(answer),
      ),
      body: Center(
        child: Text(
          'This is $answer page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
