import 'package:flutter/material.dart';

class ThanksButton extends StatelessWidget {
  const ThanksButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {
        showDialog<String>(
            context: context,
            builder: (BuildContext context) => Dialog(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'You\'re welcome!',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ));
      },
      icon: Icon(Icons.favorite),
      label: Text('Thank you!'),
    );
  }
}
