import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/data_class/day.dart';

class DayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dayProvider = Provider.of<Day>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Day'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Day : ${dayProvider.day}',
                    style: TextStyle(fontSize: 24, color: Colors.red),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        child: Icon(Icons.add),
                        onPressed: () {
                          dayProvider.increase();
                        },
                        mini: true,
                        heroTag: null,
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      FloatingActionButton(
                        child: Icon(Icons.remove),
                        onPressed: () {
                          dayProvider.decrease();
                        },
                        mini: true,
                        heroTag: null,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
