import 'package:flutter/cupertino.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _color;
  Map _colors = <String,Color>{
    'blue'  : CupertinoColors.activeBlue,
    'green' : CupertinoColors.activeGreen,
    'red': CupertinoColors.destructiveRed
  };

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Cambia el color del Texto!!',
              style: TextStyle(
                fontSize: 30.0,
                color: _colors[_color]
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CupertinoButton(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  color: CupertinoColors.activeBlue,
                  child: Text("Azul"),
                  onPressed: (){
                    setState(() {
                       this._color = 'blue';
                    });
                  },
                ),
                CupertinoButton(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  color: CupertinoColors.activeGreen,
                  child: Text("Verde"),
                  onPressed: (){
                    setState(() {
                       this._color = 'green';
                    });
                  },
                ),
                CupertinoButton(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  color: CupertinoColors.destructiveRed,
                  child: Text("Rojo"),
                  onPressed: (){
                    setState(() {
                       this._color = 'red';
                    });
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
