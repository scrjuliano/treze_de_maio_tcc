import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:horizontal_card_pager/card_item.dart';
import 'package:table_calendar/table_calendar.dart';


var now = DateTime.now();
var firstDay = DateTime(now.year, now.month - 3, now.day);
var lastDay = DateTime(now.year, now.month + 3, now.day);
CalendarFormat format = CalendarFormat.twoWeeks;

bool load = false;
var focusedDay = DateTime.now();
var selectedDay = DateTime.now();

/*@override
void initState(){
  addSchedules
}

Future addSchedules() async{
  await FirebaseFirestore.instance.collection("horarios").get().then((schedules){

    for ( var i = 0; i< schedules.length; i++){
      events.add
    }
  })
}*/

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({ Key? key}) : super(key: key);

  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {




  @override
  Widget build(BuildContext context) {
    return Material(
      //color: Colors.black,
      child: Scaffold(
        body: ListView(

          children: [
            Flexible(
              child: Column(
                children: [

                  Card(
                    child: TableCalendar(
                      //selectedDayPredicate: (day) => isSameDay(day, selectedDay),
                      onFormatChanged: (CalendarFormat _format){
                        setState(() {
                          format = _format;
                        });
                      },
                      focusedDay: now,
                      firstDay: firstDay,
                      lastDay: lastDay,
                      calendarFormat: format,
                      startingDayOfWeek: StartingDayOfWeek.monday,
                      availableCalendarFormats: const{
                        CalendarFormat.month: ' 2 Semanas',
                        CalendarFormat.week: 'Mês',
                        CalendarFormat.twoWeeks: 'Semana'
                      },

                      headerStyle: HeaderStyle(
                        decoration: BoxDecoration(
                          color: Colors.red,
                        ),
                        leftChevronIcon: const Icon(Icons.chevron_left, size: 24, color: Colors.white,),
                        rightChevronIcon: const Icon(Icons.chevron_right, size: 24, color: Colors.white,),
                        headerPadding: EdgeInsets.zero,
                        formatButtonVisible: true,
                        formatButtonShowsNext: true,
                        formatButtonDecoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        formatButtonTextStyle: const TextStyle(color: Colors.black, fontSize: 12),
                        titleTextStyle: const TextStyle( color: Colors.white),
                      ),
                      calendarStyle: CalendarStyle(
                          selectedDecoration:  const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle
                          ),
                          selectedTextStyle: const TextStyle( color: Colors.black),
                          todayDecoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle
                          ),
                          defaultDecoration: const BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle
                          ),
                          defaultTextStyle: const TextStyle( color: Colors.black)
                      ),
                      calendarBuilders: CalendarBuilders(
                          dowBuilder: (context, day){
                            String text;
                            if(day.weekday == DateTime.sunday){
                              text = 'Dom';
                            }else if (day.weekday == DateTime.monday){
                              text = 'Seg';
                            }else if (day.weekday == DateTime.tuesday){
                              text = 'Ter';
                            }else if (day.weekday == DateTime.wednesday){
                              text = 'Qua';
                            }else if (day.weekday == DateTime.thursday){
                              text = 'Qui';
                            }else if (day.weekday == DateTime.friday){
                              text = 'Sex';
                            }else if (day.weekday == DateTime.saturday){
                              text = 'Sab';
                            }else {
                              text = 'erro';
                            }

                            return Center(
                              child:  Text( text, style: const TextStyle(color: Colors.black),),
                            );
                          }
                      ),
                    ),
                  ),
                  Card(
                      child: Container(
                        width: 250,
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('Confirmação'),
                                  content: Text('Tem certeza que quer agendar este horario? '
                                  ),
                                  actions: [
                                    TextButton(
                                      child: Text('Sim'),
                                      onPressed: ()=>  Navigator.pushNamed(
                                        context,
                                        ('/home'),
                                      ),
                                    ),
                                    TextButton(
                                      child: Text('Não'),
                                      onPressed: ()=> Navigator.pop(context),
                                    )
                                  ],
                                )
                            );

                          },
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.red.shade900)),
                          child: const Text(
                            "07:00",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                  ),
                  Card(
                      child: Container(
                        width: 250,
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('Confirmação'),
                                  content: Text('Tem certeza que quer agendar este horario? '
                                  ),
                                  actions: [
                                    TextButton(
                                      child: Text('Sim'),
                                      onPressed: ()=>  Navigator.pushNamed(
                                        context,
                                        ('/home'),
                                      ),
                                    ),
                                    TextButton(
                                      child: Text('Não'),
                                      onPressed: ()=> Navigator.pop(context),
                                    )
                                  ],
                                )
                            );

                          },
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.red.shade900)),
                          child: const Text(
                            "07:30",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                  ),
                  Card(
                      child: Container(
                        width: 250,
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('Confirmação'),
                                  content: Text('Tem certeza que quer agendar este horario? '
                                  ),
                                  actions: [
                                    TextButton(
                                      child: Text('Sim'),
                                      onPressed: ()=>  Navigator.pushNamed(
                                        context,
                                        ('/home'),
                                      ),
                                    ),
                                    TextButton(
                                      child: Text('Não'),
                                      onPressed: ()=> Navigator.pop(context),
                                    )
                                  ],
                                )
                            );

                          },
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.red.shade900)),
                          child: const Text(
                            "08:00",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                  ),
                  Card(
                      child: Container(
                        width: 250,
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('Confirmação'),
                                  content: Text('Tem certeza que quer agendar este horario? '
                                  ),
                                  actions: [
                                    TextButton(
                                      child: Text('Sim'),
                                      onPressed: ()=>  Navigator.pushNamed(
                                        context,
                                        ('/home'),
                                      ),
                                    ),
                                    TextButton(
                                      child: Text('Não'),
                                      onPressed: ()=> Navigator.pop(context),
                                    )
                                  ],
                                )
                            );

                          },
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.red.shade900)),
                          child: const Text(
                            "08:30",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                  ),
                  Card(
                      child: Container(
                        width: 250,
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('Confirmação'),
                                  content: Text('Tem certeza que quer agendar este horario? '
                                  ),
                                  actions: [
                                    TextButton(
                                      child: Text('Sim'),
                                      onPressed: ()=>  Navigator.pushNamed(
                                        context,
                                        ('/home'),
                                      ),
                                    ),
                                    TextButton(
                                      child: Text('Não'),
                                      onPressed: ()=> Navigator.pop(context),
                                    )
                                  ],
                                )
                            );

                          },
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.red.shade900)),
                          child: const Text(
                            "09:00",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                  ),
                  Card(
                      child: Container(
                        width: 250,
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('Confirmação'),
                                  content: Text('Tem certeza que quer agendar este horario? '
                                  ),
                                  actions: [
                                    TextButton(
                                      child: Text('Sim'),
                                      onPressed: ()=>  Navigator.pushNamed(
                                        context,
                                        ('/home'),
                                      ),
                                    ),
                                    TextButton(
                                      child: Text('Não'),
                                      onPressed: ()=> Navigator.pop(context),
                                    )
                                  ],
                                )
                            );

                          },
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.red.shade900)),
                          child: const Text(
                            "09:30",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                  ),
                  Card(
                      child: Container(
                        width: 250,
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('Confirmação'),
                                  content: Text('Tem certeza que quer agendar este horario? '
                                  ),
                                  actions: [
                                    TextButton(
                                      child: Text('Sim'),
                                      onPressed: ()=>  Navigator.pushNamed(
                                        context,
                                        ('/home'),
                                      ),
                                    ),
                                    TextButton(
                                      child: Text('Não'),
                                      onPressed: ()=> Navigator.pop(context),
                                    )
                                  ],
                                )
                            );

                          },
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.red.shade900)),
                          child: const Text(
                            "10:00",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                  ),
                  Card(
                      child: Container(
                        width: 250,
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('Confirmação'),
                                  content: Text('Tem certeza que quer agendar este horario? '
                                  ),
                                  actions: [
                                    TextButton(
                                      child: Text('Sim'),
                                      onPressed: ()=>  Navigator.pushNamed(
                                        context,
                                        ('/home'),
                                      ),
                                    ),
                                    TextButton(
                                      child: Text('Não'),
                                      onPressed: ()=> Navigator.pop(context),
                                    )
                                  ],
                                )
                            );

                          },
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.red.shade900)),
                          child: const Text(
                            "10:30",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      );



}

}