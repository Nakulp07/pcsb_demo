import 'package:flutter/material.dart';

class NonTechEvent extends StatefulWidget {
  const NonTechEvent({super.key});

  @override
  State<NonTechEvent> createState() => _NonTechEventState();
}

class _NonTechEventState extends State<NonTechEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Technical Event'),
      ),
        body: Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF012d6c),
                        ),

                        margin: EdgeInsets.only(left: 10,top: 10,),
                        child: Center(
                          child: Text(
                            'event1',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF0159b1),
                        ),

                        margin: EdgeInsets.only(left: 10,top: 10,),
                        child: Center(
                          child: Text(
                            'event1',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF0159b1),
                          ),

                          margin: EdgeInsets.only(left: 10,top: 10),
                          child: Center(
                            child: Text(
                              'event1',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF012d6c),
                          ),
                          margin: EdgeInsets.only(left: 10,top: 10,),
                          child: Center(
                            child: Text(
                              'event1',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF012d6c),
                        ),

                        margin: EdgeInsets.only(left: 10,top: 10),
                        child: Center(
                          child: Text(
                            'event1',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF0159b1),
                        ),
                        margin: EdgeInsets.only(left: 10,top: 10,),
                        child: Center(
                          child: Text(
                            'event1',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF0159b1),
                        ),

                        margin: EdgeInsets.only(left: 10,top: 10,bottom: 10),
                        child: Center(
                          child: Text(
                            'event1',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF012d6c),
                        ),
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        child: Center(
                          child: Text(
                            'event1',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
