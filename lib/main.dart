import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Basics UI')),
        body:  Center(
          child: SelectionArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Text basic'),
                  const Text(overflow: TextOverflow.ellipsis, 'hello this text  is overflow ellipsis - overflow overflow overflow overflow overflow overflow overflow'),
                  const Text(overflow: TextOverflow.fade, maxLines: 1, 'hello this text  is overflow fade - overflow overflow overflow overflow overflow overflow overflow'),
                  const Text(overflow: TextOverflow.fade, maxLines: 1, softWrap: false, 'hello this text  is overflow fade and softwrap - overflow overflow overflow overflow overflow overflow overflow'),
                  const Text.rich(
                    TextSpan(
                      text: 'Text rich Span',
                      children: <TextSpan>[
                        TextSpan(text: ' span 1 ', style: TextStyle(fontStyle: FontStyle.italic)),
                        TextSpan(text: 'span 2', style: TextStyle(fontWeight: FontWeight.bold))
                      ]
                    )
                  ),
                  const Text('Selectable text'),
                  const SelectionContainer.disabled(child: Text('Non Selectable text')),
                  const Text('Expanded Row'),
                  Center(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.amber,
                            height: 100,
                          ),
                        ),
                        Container(
                          color: Colors.blue,
                          height: 100,
                          width: 50,
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.amber,
                            height: 100,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Text('Stack'),
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.red,
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        color: Colors.green,
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  const Text('Foreground text'),
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.white,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              Colors.black.withAlpha(0),
                              Colors.black12,
                              Colors.black45
                            ]
                          )
                        ),
                        child: const Text('Foreground Text',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
