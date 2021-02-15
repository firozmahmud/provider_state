import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/data_class/day.dart';
import 'package:provider_state/data_class/month.dart';
import 'package:provider_state/day/day_screen.dart';
import 'package:provider_state/month/month_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dayProvider = Provider.of<Day>(context);
    final monthProvider = Provider.of<Month>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Center(
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
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Month : ${monthProvider.month}',
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
                              monthProvider.increase();
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
                              monthProvider.decrease();
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
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DayScreen()),
                      );
                    },
                    child: Text(
                      'Day',
                      style: TextStyle(fontSize: 20, color: Colors.green),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MonthScreen()),
                      );
                    },
                    child: Text(
                      'Month',
                      style: TextStyle(fontSize: 20, color: Colors.green),
                    ),
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
