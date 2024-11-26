import 'package:final_project/core/constans/const_data.dart';
import 'package:final_project/core/constans/tasky_color.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/widgets/tasky_app_custom_today_calendar.dart';
import 'package:final_project/widgets/tasky_app_today_timer.dart';
import 'package:final_project/widgets/tasky_header.dart';
import 'package:final_project/widgets/tasky_svg.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

  String _formatDate(DateTime date) {
    return "${date.day} ${[
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ][date.month - 1]} ${date.year}";
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
                  TaskcySvgLink: 'assets/icons/back_arrow_ios.svg',
                ),
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
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: TableCalendar(
                  focusedDay: selectedDate,
                  firstDay: DateTime.utc(2000),
                  lastDay: DateTime.utc(2100),
                  locale: "en_US",
                  rowHeight: 44,
                  calendarFormat: CalendarFormat.month,
                  startingDayOfWeek: StartingDayOfWeek.monday,
                  selectedDayPredicate: (day) => isSameDay(selectedDate, day),
                  onDaySelected: _onDaySelected,
                  eventLoader: (day) => events[day] ?? [],
                  headerStyle: HeaderStyle(
                    titleCentered: true,
                    formatButtonVisible: false,
                    leftChevronIcon: Icon(Icons.arrow_back_sharp,
                        size: 22, color: TaskyColor.darkBlue),
                    rightChevronIcon: Icon(Icons.arrow_forward_sharp,
                        size: 22, color: TaskyColor.darkBlue),
                    titleTextFormatter: (date, locale) => _formatDate(
                        date), // Use your custom formatting function
                    titleTextStyle: const TextStyle(
                        color: TaskyColor.orange,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  calendarStyle: CalendarStyle(
                    selectedTextStyle: TextStyle(color: Colors.black),
                    todayDecoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    selectedDecoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.orange, width: 1),
                      shape: BoxShape.circle,
                    ),
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
