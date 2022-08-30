
import 'package:couter_app_stacked/counter_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';


class MyHomePage extends StatelessWidget{
  MyHomePage({Key? key, required this.title}) : super(key: key);

  String title;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CounterAppModel>.reactive(viewModelBuilder: ()=>CounterAppModel(),
        builder: (context,model,child){
      return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${model.counter}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            model.increment();
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      );
        });
  }
}