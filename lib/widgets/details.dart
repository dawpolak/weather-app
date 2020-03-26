import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Details extends StatelessWidget {
  final DateTime sunrise;
  final DateTime sunset;

  Details({
    Key key,
    this.sunrise,
    this.sunset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child:
          Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
              Text("wschód",textAlign: TextAlign.center,
              style:
              TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w200,
                color: Colors.white,
              )),
              Text(DateFormat('kk:mm').format(sunrise),
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ]
          ),
        ),

        Expanded(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Text("zachód",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                ),),
                Text(DateFormat('kk:mm').format(sunset),
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ]
          ),
        ),
      ],
    );
    //);
  }

}
