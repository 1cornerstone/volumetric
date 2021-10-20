import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: VolumetricWidget(),
    debugShowCheckedModeBanner: false,
  ));
}

class VolumetricWidget extends StatefulWidget {
  @override
  _VolumetricWidgetState createState() => _VolumetricWidgetState();
}

class _VolumetricWidgetState extends State<VolumetricWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Volumetric Widget",
          ),
          centerTitle: true,
        ),
        body:Center(
          child: Container(
            height: 80,
            margin:EdgeInsets.fromLTRB(25.0,40.0,2.0,0.0) ,
            alignment: Alignment.topLeft,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: List.generate(61, (index){
                    return  marker(index);
                  })
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget marker(int index){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      (index % 5 == 0)? Text(
          index.toString(),
        textAlign: TextAlign.left,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 13,
        ),
      ) :SizedBox(),
      SizedBox(height: 5,),
      Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.fromLTRB(5.0,10.0,5.0,0.0),
        width: 1,
        color: (index % 5 == 0)? Colors.green: Colors.black,
        height: (index % 5 == 0)? 20: 10,
      ),
    ],
  );
}


