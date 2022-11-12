import 'package:flutter/material.dart';

class PointsCounter extends StatefulWidget {

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int puudaTeamPoint = 0;

  int hakimTeamPoint = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Counter Points of VolleyBall Teams'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,  //ده علشان ابعدهم مسافات متساوية عن بعض
            children: [
              Container(
                height: 500.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('PuuDa Team',
                    style: TextStyle(
                      fontSize: 28.0,
                    ),
                    ),
                    Text('$puudaTeamPoint',
                      style: TextStyle(
                        fontSize: 150.0,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightGreen,
                        minimumSize: Size(150.0, 50.0),
                      ),
                      onPressed: (){
                        setState(() {
                          puudaTeamPoint++;
                        });
                      },
                        child: Text('Add 1 Point',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                        ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightGreen,
                        minimumSize: Size(150.0, 50.0),
                      ),
                      onPressed: (){
                        setState(() {
                          puudaTeamPoint += 2;
                        });
                      },
                      child: Text('Add 2 Point',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightGreen,
                        minimumSize: Size(150.0, 50.0),
                      ),
                      onPressed: (){
                        setState(() {
                          puudaTeamPoint += 3;
                        });
                      },
                      child: Text('Add 3 Point',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 500.0,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: 50.0,
                  endIndent: 50.0,
                ),
              ),
              Container(
                height: 500.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Hakim Team',
                      style: TextStyle(
                        fontSize: 28.0,
                      ),
                    ),
                    Text('$hakimTeamPoint',
                      style: TextStyle(
                        fontSize: 150.0,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightGreen,
                        minimumSize: Size(150.0, 50.0),
                      ),
                      onPressed: (){
                        setState(() {
                          hakimTeamPoint++;
                        });
                      },
                      child: Text('Add 1 Point',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightGreen,
                        minimumSize: Size(150.0, 50.0),
                      ),
                      onPressed: (){
                        setState(() {
                          hakimTeamPoint += 2;
                        });
                      },
                      child: Text('Add 2 Point',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightGreen,
                        minimumSize: Size(150.0, 50.0),
                      ),
                      onPressed: (){
                        setState(() {
                          hakimTeamPoint += 3;
                        });
                      },
                      child: Text('Add 3 Point',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.lightGreen,
              minimumSize: Size(150.0, 50.0),
            ),
            onPressed: (){
              setState(() {
                puudaTeamPoint = 0;
                hakimTeamPoint = 0;
              });
            },
            child: Text('RESET',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
