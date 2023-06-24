import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var u = 0.0, v = 0.0, sum = 0.0;
  final TextEditingController t1 = TextEditingController();
  final TextEditingController t2 = TextEditingController();
  void concaveM(){
     setState(() {
       u = double.parse(t1.text);
       v = double.parse(t2.text);
       if(u==0 || v==0){
          sum = 0;
       }
       sum = -(u*v)/(u+v);
     });
  }
  void convexM(){
    setState(() {
      u = double.parse(t1.text);
      v = double.parse(t2.text);
      if(u==0 || v==0){
        sum = 0;
      }
      sum = (u*v)/(u-v);
    });
  }
  void concaveL(){
    setState(() {
      u = double.parse(t1.text);
      v = double.parse(t2.text);
      if(u==0 || v==0){
        sum = 0;
      }
      sum = - (u*v)/(u-v);
    });
  }
  void convexL(){
    setState(() {
      u = double.parse(t1.text);
      v = double.parse(t2.text);
      if(u==0 || v==0){
        sum = 0;
      }
      sum = (u*v)/(u+v);
    });
  }
  void clear(){
    setState(() {
      t1.text = "0";
      t2.text = "0";
      sum = 0.0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Focal Length Calculator"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Output: $sum",
            style: const TextStyle(fontSize: 20.0, color: Colors.purple, fontWeight: FontWeight.bold),
            ),
            TextField(
              keyboardType: const TextInputType.numberWithOptions(signed: false, decimal: true),
              decoration: const InputDecoration(
                hintText: "Enter Object Distance",
              ),
              controller: t1,
            ),
            TextField(
              keyboardType: const TextInputType.numberWithOptions(signed: false, decimal: true),
              decoration: const InputDecoration(
                  hintText: "Enter Image Distance"
              ),
              controller: t2,
            ),
            const Padding(padding: EdgeInsets.only(top: 10.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(onPressed: () {concaveM();}, color: Colors.greenAccent, child: const Text("Concave Mirror"),),
                MaterialButton(onPressed: () {convexM();}, color: Colors.greenAccent, child: const Text("Convex Mirror"),),

              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 10.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(onPressed: () {concaveL();}, color: Colors.greenAccent, child: const Text("Concave Lens"),),
                MaterialButton(onPressed: () {convexL();}, color: Colors.greenAccent, child: const Text("Convex Lens"),),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                    onPressed: () {clear();},
                    color: Colors.redAccent,
                    child: const Text("Clear"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
