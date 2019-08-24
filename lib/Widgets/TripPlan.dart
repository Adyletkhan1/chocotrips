import 'package:flutter/material.dart';

class TripPlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              children: <Widget>[
                Text('Рекомендуемое время: ',
                    style: Theme.of(context).textTheme.caption),
                Text('20 мин'),
              ],
            ),
          ),
          Text(
              "Не стесняйтесь фотографировать и выкладывать в социальные сети с хэштегом #chocotrip и получите возможность попасть в раздел 'фото'.",
              style: Theme.of(context).textTheme.caption),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Действия:", style: TextStyle(fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: <Widget>[Text('• '), Text("Любование вечным огнём")],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: <Widget>[Text('• '), Text("Оснакомьтесь с надписями на плитах")],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("К следующей достопримечательности:", style: TextStyle(fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("Обойдите монумент и далее по аллее вы сможете увидеть Везенский Кафедральный Сабор"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
