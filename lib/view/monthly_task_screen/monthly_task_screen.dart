import 'package:final_project/core/constans/const_data.dart';
import 'package:final_project/core/constans/tasky_color.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/widgets/tasky_header.dart';
import 'package:final_project/widgets/tasky_svg.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MonthlyTaskScreen extends StatefulWidget {
  const MonthlyTaskScreen({super.key});

  @override
  State<MonthlyTaskScreen> createState() => _MonthlyTaskScreenState();
}

class _MonthlyTaskScreenState extends State<MonthlyTaskScreen> {
  DateTime selectedDate = DateTime.now();
  Map<DateTime, List<String>> events = {};

  TextEditingController eventController = TextEditingController();

  List<String> _getEventsForDay(DateTime day) {
    return events[day] ?? [];
  }

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      selectedDate = day;
    });
  }

  String _getMonthName(DateTime date) {
    return [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ][date.month - 1];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TaskcyHeader(
                svgIconOne: TaskcySvg(
                    svgWidth: 20,
                    svgHeight: 20,
                    TaskcySvgLink: 'assets/icons/back_arrow_ios.svg'),
                svgIconTwo: TaskcySvg(
                  svgWidth: 20,
                  svgHeight: 20,
                  TaskcySvgLink: 'assets/icons/edit.svg',
                  svgColor: TaskyColor.darkBlue,
                ),
                isbuttonTwoShow: true,
                isButtonText: false,
                isButtonContainer: true,
                istextShow: true,
                screenName: 'Monthly Task',
                textLeftPadding: 40,
                textButtonOrContainerLeftPadding: 80,
                onPressedRightIcon: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Event Name"),
                      content: TextField(
                        controller: eventController,
                        decoration:
                            const InputDecoration(hintText: "Enter Event"),
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            setState(() {
                              if (eventController.text.isNotEmpty) {
                                events[selectedDate] = [
                                  ...(events[selectedDate] ?? []),
                                  eventController.text,
                                ];
                                eventController.clear();
                              }
                            });
                          },
                          child: const Text("Submit"),
                        ),
                      ],
                    ),
                  );
                },
              ),
              /* TaskcyHeader(
                screenName: 'Monthly Task',
                svgIconOne: const Icon(Icons.arrow_back_ios),
                svgIconTwo: const Icon(Icons.edit),
                
              ),*/
              TodayTaskyCalendar(
                selectedDate: selectedDate,
                onUpdateDate: (newDate) => setState(() {
                  selectedDate = newDate;
                }),
              ),
              const TaskyTodayTimer(),
              Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.orange, width: 2),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: TableCalendar(
                  focusedDay: selectedDate,
                  firstDay: DateTime.utc(2000),
                  lastDay: DateTime.utc(2100),
                  locale: "en_US",
                  rowHeight: 43,
                  calendarFormat: CalendarFormat.month,
                  startingDayOfWeek: StartingDayOfWeek.monday,
                  selectedDayPredicate: (day) => isSameDay(selectedDate, day),
                  onDaySelected: _onDaySelected,
                  eventLoader: _getEventsForDay,
                  headerStyle: const HeaderStyle(
                    titleCentered: true,
                    formatButtonVisible: false,
                    leftChevronIcon: Icon(Icons.arrow_back_sharp,
                        size: 25, color: TaskyColor.darkBlue),
                    rightChevronIcon: Icon(Icons.arrow_forward_sharp,
                        size: 25, color: TaskyColor.darkBlue),
                  ),
                  calendarStyle: CalendarStyle(
                    todayDecoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                    ),
                    selectedDecoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    markerDecoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                    ),
                  ),
                  calendarBuilders: CalendarBuilders(
                    defaultBuilder: (context, day, focusedDay) {
                      if (events.containsKey(day)) {
                        return Container(
                          margin: const EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              '${day.day}',
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                        );
                      }
                      return null;
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Header Component
/* TaskcyHeader extends StatelessWidget {
  final String screenName;
  final Widget svgIconOne;
  final Widget svgIconTwo;
  final VoidCallback? onPressedRightIcon;

  const TaskcyHeader({
    super.key,
    required this.screenName,
    required this.svgIconOne,
    required this.svgIconTwo,
    this.onPressedRightIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        svgIconOne,
        Text(screenName, style: const TextStyle(fontSize: 20)),
        GestureDetector(
          onTap: onPressedRightIcon,
          child: svgIconTwo,
        ),
      ],
    );
  }
}*/

class TodayTaskyCalendar extends StatelessWidget {
  final DateTime selectedDate;
  final Function(DateTime) onUpdateDate;

  const TodayTaskyCalendar({
    super.key,
    required this.selectedDate,
    required this.onUpdateDate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${_getMonthName(selectedDate)}, ${selectedDate.day} ✍',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            '15 tasks today',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  String _getMonthName(DateTime date) {
    return [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ][date.month - 1];
  }
}

// Timer Placeholder
/*class TaskyTodayTimer extends StatelessWidget {
  const TaskyTodayTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: Text('TaskyTodayTimer placeholder'),
    );
  }
}*/
class TaskyTodayTimer extends StatefulWidget {
  const TaskyTodayTimer({super.key});

  @override
  State<TaskyTodayTimer> createState() => _TaskyTodayTimerState();
}

class _TaskyTodayTimerState extends State<TaskyTodayTimer> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.p.top, left: 24.w, right: 16.w),
      child: SizedBox(
        height: 118.h,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: ConstData.taskyTodayCalender.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                setState(() {
                  if (selectedIndex == index) {
                    selectedIndex = null;
                  } else {
                    selectedIndex = index;
                  }
                });
              },
              child: Container(
                margin: EdgeInsets.only(left: index == 0 ? 0 : 8.w),
                width: 64.w,
                height: 118.h,
                decoration: BoxDecoration(
                  color:
                      selectedIndex == index ? Colors.orange : TaskyColor.white,
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(
                    width: 2.w,
                    color: const Color(0xffDFDFDF),
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        ConstData.taskyTodayCalender.keys
                            .elementAt(index)
                            .toString(),
                        style: TextStyle(
                            fontSize: 25.f,
                            fontWeight: FontWeight.w500,
                            color: selectedIndex == index
                                ? Colors.white
                                : const Color(0xff848A94)),
                      ),
                      Text(
                        ConstData.taskyTodayCalender.values.elementAt(index),
                        style: TextStyle(
                          fontSize: 14.f,
                          fontWeight: FontWeight.w500,
                          color: selectedIndex == index
                              ? Colors.white
                              : const Color(0xff848A94),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
