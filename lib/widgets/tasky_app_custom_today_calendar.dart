import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TodayTaskyCalendar extends StatefulWidget {
  final DateTime selectedDate;
  final Function(DateTime) onUpdateDate;

  const TodayTaskyCalendar({
    super.key,
    required this.selectedDate,
    required this.onUpdateDate,
  });

  @override
  State<TodayTaskyCalendar> createState() => _TodayTaskyCalendarState();
}

class _TodayTaskyCalendarState extends State<TodayTaskyCalendar> {
  bool isIconPressed = false;

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
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                '${widget.selectedDate.day} ${_getMonthName(widget.selectedDate)} ${widget.selectedDate.year}',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isIconPressed = !isIconPressed;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: isIconPressed ? Colors.orange : Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey, width: 2),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/calendar.svg',
                      color: isIconPressed ? Colors.white : Colors.orange,
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                textAlign: TextAlign.left,
                '15 tasks today',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
