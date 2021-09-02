import 'package:exemplo/assets/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({ Key? key }) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  final bool formatButtonVisible = false;
  
  
  

  @override
  Widget build(BuildContext context) {
    return   TableCalendar(
  firstDay: DateTime.utc(2010, 10, 16),
  lastDay: DateTime.utc(2030, 3, 14),
  focusedDay: DateTime.utc(2020,12, 14 ),
  headerVisible: false,
  
  daysOfWeekStyle: DaysOfWeekStyle(weekdayStyle: GoogleFonts.poppins(fontSize: 14,fontStyle: FontStyle.normal,color: ColorsApp.daysWeekColor.withOpacity(0.5),fontWeight: FontWeight.w400),
  weekendStyle:GoogleFonts.poppins(fontSize: 14,fontStyle: FontStyle.normal,color: ColorsApp.daysWeekColor.withOpacity(0.5),fontWeight: FontWeight.w400) ),
          calendarStyle: CalendarStyle(defaultTextStyle: GoogleFonts.poppins(fontSize: 14,fontStyle: FontStyle.normal,color: ColorsApp.textBlack,fontWeight: FontWeight.w400,
          ),
          markerDecoration: BoxDecoration(),
          selectedDecoration: BoxDecoration( color: ColorsApp.selectionAgenda, borderRadius: BorderRadius.circular(10)),
          markersAlignment: Alignment.topRight,
          cellMargin: EdgeInsets.all(0),
          

          ),
  

) ;

  }
}