import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '拖曳測試',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '判斷色階並排列'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
 List<String>  _color =  ["#f44235","ff9800","ffeb3a","4caf50","2296f3","7c4cff","673ab7"];

int _colorOne = 0;
int _colorTwo = 1;
int _colorThird = 2;
int _colorFour = 3;
int _colorFive = 4;
int _colorSix = 5;
int _colorSeven = 6;
int temp=0;






class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int acceptedData = 0;




  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children:[
        Draggable<int>(
        affinity:Axis.vertical,

          // Data is the value this Draggable stores.
          data: _colorOne,
            onDragCompleted:(){

              _colorOne = temp;

            },

          feedback: Card(color: HexColor(_color[_colorOne]) ,child: const SizedBox(height: 30,width: 30,),),
          // childWhenDragging: Container(
          //   height: 100.0,
          //   width: 100.0,
          //   color: Colors.pinkAccent,
          //   child: const Center(
          //     child: Text('Child When Dragging'),
          //   ),
          // ),
          child:
             // Card(color: HexColor(_color[_colorOne]) ,child: const SizedBox(height: 30,width: 30,),)),
          DragTarget<int>(
            builder: (
                BuildContext context,
                List<dynamic> accepted,
                List<dynamic> rejected,
                ) {
              return Card(color: HexColor(_color[_colorOne]) ,child: const SizedBox(height: 30,width: 30));
            },
            onAccept: (int data) {
              setState(() {
                temp = _colorOne;
                _colorOne = data;
              });
            },
          )),
            Draggable<int>(
                affinity:Axis.vertical,
                // Data is the value this Draggable stores.
                data: _colorTwo,
                onDragCompleted:(){

                  _colorTwo = temp;

                },
                feedback: Card(color: HexColor(_color[_colorTwo]) ,child: const SizedBox(height: 30,width: 30,),),
                // childWhenDragging: Container(
                //   height: 100.0,
                //   width: 100.0,
                //   color: Colors.pinkAccent,
                //   child: const Center(
                //     child: Text('Child When Dragging'),
                //   ),
                // ),
                child:
                // Card(color: HexColor(_color[_colorOne]) ,child: const SizedBox(height: 30,width: 30,),)),
                DragTarget<int>(
                  builder: (
                      BuildContext context,
                      List<dynamic> accepted,
                      List<dynamic> rejected,
                      ) {
                    return Card(color: HexColor(_color[_colorTwo]) ,child: const SizedBox(height: 30,width: 30));
                  },
                  onAccept: (int data) {
                    setState(() {
                      temp = _colorTwo;
                      _colorTwo = data;
                    });
                  },
                )),
            Draggable<int>(
                affinity:Axis.vertical,
                // Data is the value this Draggable stores.
                data: _colorThird,
                onDragCompleted:(){

                  _colorThird = temp;

                },
                feedback: Card(color: HexColor(_color[_colorThird]) ,child: const SizedBox(height: 30,width: 30,),),
                // childWhenDragging: Container(
                //   height: 100.0,
                //   width: 100.0,
                //   color: Colors.pinkAccent,
                //   child: const Center(
                //     child: Text('Child When Dragging'),
                //   ),
                // ),
                child:
                // Card(color: HexColor(_color[_colorOne]) ,child: const SizedBox(height: 30,width: 30,),)),
                DragTarget<int>(
                  builder: (
                      BuildContext context,
                      List<dynamic> accepted,
                      List<dynamic> rejected,
                      ) {
                    return Card(color: HexColor(_color[_colorThird]) ,child: const SizedBox(height: 30,width: 30));
                  },
                  onAccept: (int data) {
                    setState(() {
                      temp = _colorThird;
                      _colorThird = data;
                    });
                  },
                )),
            Draggable<int>(
                affinity:Axis.vertical,
                // Data is the value this Draggable stores.
                data: _colorFour,
                onDragCompleted:(){

                  _colorFour = temp;

                },
                feedback: Card(color: HexColor(_color[_colorFour]) ,child: const SizedBox(height: 30,width: 30,),),
                // childWhenDragging: Container(
                //   height: 100.0,
                //   width: 100.0,
                //   color: Colors.pinkAccent,
                //   child: const Center(
                //     child: Text('Child When Dragging'),
                //   ),
                // ),
                child:
                // Card(color: HexColor(_color[_colorOne]) ,child: const SizedBox(height: 30,width: 30,),)),
                DragTarget<int>(
                  builder: (
                      BuildContext context,
                      List<dynamic> accepted,
                      List<dynamic> rejected,
                      ) {
                    return Card(color: HexColor(_color[_colorFour]) ,child: const SizedBox(height: 30,width: 30));
                  },
                  onAccept: (int data) {
                    setState(() {
                      temp = _colorFour;
                      _colorFour = data;
                    });
                  },
                )),
            Draggable<int>(
                affinity:Axis.vertical,
                // Data is the value this Draggable stores.
                data: _colorFive,
                onDragCompleted:(){

                  _colorFive = temp;

                },
                feedback: Card(color: HexColor(_color[_colorFive]) ,child: const SizedBox(height: 30,width: 30,),),
                // childWhenDragging: Container(
                //   height: 100.0,
                //   width: 100.0,
                //   color: Colors.pinkAccent,
                //   child: const Center(
                //     child: Text('Child When Dragging'),
                //   ),
                // ),
                child:
                // Card(color: HexColor(_color[_colorOne]) ,child: const SizedBox(height: 30,width: 30,),)),
                DragTarget<int>(
                  builder: (
                      BuildContext context,
                      List<dynamic> accepted,
                      List<dynamic> rejected,
                      ) {
                    return Card(color: HexColor(_color[_colorFive]) ,child: const SizedBox(height: 30,width: 30));
                  },
                  onAccept: (int data) {
                    setState(() {
                      temp = _colorFive;
                      _colorFive = data;
                    });
                  },
                )),
            Draggable<int>(
                affinity:Axis.vertical,
                // Data is the value this Draggable stores.
                data: _colorSix,
                onDragCompleted:(){

                  _colorSix = temp;

                },
                feedback: Card(color: HexColor(_color[_colorSix]) ,child: const SizedBox(height: 30,width: 30,),),
                // childWhenDragging: Container(
                //   height: 100.0,
                //   width: 100.0,
                //   color: Colors.pinkAccent,
                //   child: const Center(
                //     child: Text('Child When Dragging'),
                //   ),
                // ),
                child:
                // Card(color: HexColor(_color[_colorOne]) ,child: const SizedBox(height: 30,width: 30,),)),
                DragTarget<int>(
                  builder: (
                      BuildContext context,
                      List<dynamic> accepted,
                      List<dynamic> rejected,
                      ) {
                    return Card(color: HexColor(_color[_colorSix]) ,child: const SizedBox(height: 30,width: 30));
                  },
                  onAccept: (int data) {
                    setState(() {
                      temp = _colorSix;
                      _colorSix = data;
                    });
                  },
                )),
            Draggable<int>(
                affinity:Axis.vertical,
                // Data is the value this Draggable stores.
                data: _colorSeven,
                onDragCompleted:(){

                  _colorSeven = temp;

                },
                feedback: Card(color: HexColor(_color[_colorSeven]) ,child: const SizedBox(height: 30,width: 30,),),
                // childWhenDragging: Container(
                //   height: 100.0,
                //   width: 100.0,
                //   color: Colors.pinkAccent,
                //   child: const Center(
                //     child: Text('Child When Dragging'),
                //   ),
                // ),
                child:
                // Card(color: HexColor(_color[_colorOne]) ,child: const SizedBox(height: 30,width: 30,),)),
                DragTarget<int>(
                  builder: (
                      BuildContext context,
                      List<dynamic> accepted,
                      List<dynamic> rejected,
                      ) {
                    return Card(color: HexColor(_color[_colorSeven]) ,child: const SizedBox(height: 30,width: 30));
                  },
                  onAccept: (int data) {
                    setState(() {
                      temp = _colorSeven;
                      _colorSeven = data;
                    });
                  },
                )),




             // Card(color: HexColor(_color[_colorTwo]),child: const SizedBox(height: 30,width: 30,),),
             // Card(color: HexColor(_color[_colorThird]),child:const SizedBox(height: 30,width: 30,),),
             // Card(color: HexColor(_color[_colorFour]),child:const SizedBox(height: 30,width: 30,),),
             // Card(color: HexColor(_color[_colorFive]),child:const SizedBox(height: 30,width: 30,),),
             // Card(color: HexColor(_color[_colorSix]),child:const SizedBox(height: 30,width: 30,),),
             // Card(color: HexColor(_color[_colorSeven]),child:const SizedBox(height: 30,width: 30,),),




            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Draggable(
                  // axis: Axis.vertical,
                  // affinity:Axis.vertical,
                  // Data is the value this Draggable stores.
                  data: Cardone,
                  feedback: Container(
                    color: Colors.deepOrange,
                    height: 100,
                    width: 100,
                    child: const Icon(Icons.directions_run),
                  ),
                  childWhenDragging: Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.pinkAccent,
                    child: const Center(
                      child: Text('Child When Dragging'),
                    ),
                  ),
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.lightGreenAccent,
                    child: const Center(
                      child: Text('Draggable'),
                    ),
                  ),
                ),
                DragTarget<int>(
                  builder: (
                      BuildContext context,
                      List<dynamic> accepted,
                      List<dynamic> rejected,
                      ) {
                    return Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.cyan,
                      child: Center(
                        child: Text('Value is updated to: $acceptedData'),
                      ),
                    );
                  },
                  onAccept: (int data) {
                    setState(() {
                      acceptedData += data;
                    });
                  },
                ),
              ],
            ),






          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


  void change(){


  }

}
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
class Cardone extends StatelessWidget {
  const Cardone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
