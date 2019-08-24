import 'package:flutter/material.dart';

class TripInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Общяя информация:", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("    Mемориальный комплекс в Алма-Ате, возведённый в Парке имени 28-ми героев-панфиловцев к 30-й годовщине победы в Великой Отечественной войне. В рамках комплекса был зажжён вечный огонь."),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Интересные факты:", style: TextStyle(fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: <Widget>[Text('• '), Flexible(child: Text("В 1974 году архитекторами Т.К. Басеновым, Р.А. Сейдалиным и В.Н. Кимом был создан проект мемориального комплекса"))],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: <Widget>[Text('• '), Flexible(child: Text("8 мая 1975 года был торжественно открыт мемориальный комплекс"))],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: <Widget>[Text('• '), Flexible(child: Text("В 2012 году была произведена реставрация Мемориала Славы и его главного элемента впервые за 30 лет."))],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
