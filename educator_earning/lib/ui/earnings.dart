import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class educatorEarning extends StatefulWidget {
  @override
  _educatorEarningState createState() => _educatorEarningState();
}

class _educatorEarningState extends State<educatorEarning> {
  String dateSelect = "Date";
  List<String> date = [
    "Date",
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31"
  ];
  String monthSelect = "Month";
  List<String> month = [
    "Month",
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  String yearSelect = "Year";
  List<String> year = [
    "Year",
    "2020",
    "2019",
    "2018",
    "2017",
    "2016",
    "2015",
    "2014",
    "2013",
    "2012",
    "2011",
    "2010",
    "2009",
    "2008",
    "2007",
    "2006",
    "2005",
    "2004",
    "2003",
    "2002",
    "2001",
    "2000",
    "1999",
    "1998",
    "1997",
    "1996",
    "1995",
    "1994",
    "1993",
    "1992",
    "1991",
    "1990",
    "1989",
    "1988"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Your earnings"),
        backgroundColor: Colors.grey.shade900,
      ),
      backgroundColor: Colors.white10,
      body: ListView(
        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        children: [
          Container(

            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text("My Earnings",style: TextStyle(fontSize:20 ,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Center(child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Image.asset("images/graph.jpg",height: 200,width: 550,),
            )),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                margin: EdgeInsets.only(top: 10),
                child: Text("Please select the date range (month selection mandatory) below to view the data.",
                style: TextStyle(fontSize:20 ,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              child: Text("Start date", style: TextStyle(fontSize:16 , color: Colors.white,
                  fontWeight: FontWeight.w400),),
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                padding: EdgeInsets.all(3),
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        style: BorderStyle.solid, color: Colors.white38)),
                child: Theme(
                  data: Theme.of(context)
                      .copyWith(canvasColor: Colors.grey.shade900),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, top: 2.0, bottom: 2.0),
                    child: Row(
                      children: <Widget>[
                        DropdownButton<String>(
                          hint: Text("Date"),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          items: date.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),
                          onChanged: (String newValueSelected) {
                            setState(() {
                              this.dateSelect = newValueSelected;
                            });
                          },
                          value: dateSelect,
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 18.0),
                          child: DropdownButton<String>(
                            hint: Text("Month"),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            items: month.map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                            onChanged: (String newValueSelected) {
                              setState(() {
                                this.monthSelect = newValueSelected;
                              });
                            },
                            value: monthSelect,
                          ),
                        ),
                        DropdownButton<String>(
                          hint: Text("Year"),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          items: year.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),
                          onChanged: (String newValueSelected) {
                            setState(() {
                              this.yearSelect = newValueSelected;
                            });
                          },
                          value: yearSelect,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              child: Text("End date", style: TextStyle(fontSize:16 , color: Colors.white,
                  fontWeight: FontWeight.w400),),
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                padding: EdgeInsets.all(3),
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        style: BorderStyle.solid, color: Colors.white38)),
                child: Theme(
                  data: Theme.of(context)
                      .copyWith(canvasColor: Colors.grey.shade900),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, top: 2.0, bottom: 2.0),
                    child: Row(
                      children: <Widget>[
                        DropdownButton<String>(
                          hint: Text("Date"),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          items: date.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),
                          onChanged: (String newValueSelected) {
                            setState(() {
                              this.dateSelect = newValueSelected;
                            });
                          },
                          value: dateSelect,
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 18.0),
                          child: DropdownButton<String>(
                            hint: Text("Month"),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            items: month.map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                            onChanged: (String newValueSelected) {
                              setState(() {
                                this.monthSelect = newValueSelected;
                              });
                            },
                            value: monthSelect,
                          ),
                        ),
                        DropdownButton<String>(
                          hint: Text("Year"),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          items: year.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),
                          onChanged: (String newValueSelected) {
                            setState(() {
                              this.yearSelect = newValueSelected;
                            });
                          },
                          value: yearSelect,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: FlatButton(
                onPressed: () {
                  debugPrint("");
                },
                child: Center(
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text("Net earnings",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.purple,fontSize: 20),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("₹ 6,00,000",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.deepOrange,fontSize: 25),),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("Earnings from the students referred by you",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.purple,fontSize: 20),)),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("₹ 6,00,000",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.deepOrange,fontSize: 25),),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("Earnings from the students referred by other sources",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.purple,fontSize: 20),)),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("₹ 6,00,000",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.deepOrange,fontSize: 25),),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Earnings from the students who",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.purple,fontSize: 20),),
                  Text("have not been referred by anyone",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.purple,fontSize: 20),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("₹ 6,00,000",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.deepOrange,fontSize: 25),),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Edupreneur referral earning",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.purple,fontSize: 20),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("₹ 6,00,000",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.deepOrange,fontSize: 25),),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Penalty incurred ",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.purple,fontSize: 20),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("₹ 6,00,000",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.deepOrange,fontSize: 25),),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
