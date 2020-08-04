import 'package:challengetdc/constants/constants.dart';
import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {

  InfoWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 64),
      child: Column(
        children: <Widget>[
          Text(
            'Em caso de dúvidas entre em contato',
            style: kTextStyleBold,
          ),
          Text.rich(
            TextSpan(
              text: 'Capitais e região metropolitana: ',
              style: TextStyle(color: Colors.grey),
              children: <TextSpan>[
                TextSpan(
                    text: '3003-4070',
                    style: kTextStyleBold
                ),
              ],
            ),
          ),
          Text.rich(
            TextSpan(
              text: 'Demais localidades: ',
              style: TextStyle(color: Colors.grey),
              children: <TextSpan>[
                TextSpan(
                  text: '0800 940 0007',
                  style: kTextStyleBold,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}