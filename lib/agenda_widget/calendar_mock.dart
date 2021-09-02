import 'package:exemplo/assets/colors.dart';
import 'package:exemplo/assets/fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Calendar_mock extends StatefulWidget {
  const Calendar_mock({ Key? key }) : super(key: key);

  @override
  _Calendar_mockState createState() => _Calendar_mockState();
}

class _Calendar_mockState extends State<Calendar_mock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        
        
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(child: Text('Dom',style: FonteApp.fontCalendarWeek,)),
            Text('Seg',style: FonteApp.fontCalendarWeek,),
            Text('Ter',style: FonteApp.fontCalendarWeek,),
            Text('Qua',style: FonteApp.fontCalendarWeek,),
            Text('Qui',style: FonteApp.fontCalendarWeek,),
            Text('Sex',style: FonteApp.fontCalendarWeek,),
            Text('Sab',style: FonteApp.fontCalendarWeek,),
            
          ],

        ),
        SizedBox(height: 10,),

        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('29', style: FonteApp.fontCalendarNumberOutside, ),
              Text('30', style: FonteApp.fontCalendarNumberOutside,),
              Text('1', style: FonteApp.fontCalendarNumberDay,),
              Text('2', style: FonteApp.fontCalendarNumberDay,),
              Text('3', style: FonteApp.fontCalendarNumberDay,),
              Text('4', style: FonteApp.fontCalendarNumberDay,),
              Text('5', style: FonteApp.fontCalendarNumberDay,),
            ],

        ),

        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('6', style: FonteApp.fontCalendarNumberDay,),
              Text('7', style: FonteApp.fontCalendarNumberDay,),
              Text('8', style: FonteApp.fontCalendarNumberDay,),
              Text('9', style: FonteApp.fontCalendarNumberDay,),
              Text('10', style: FonteApp.fontCalendarNumberDay,),
              Text('11', style: FonteApp.fontCalendarNumberDay,),
              Text('12', style: FonteApp.fontCalendarNumberDay,),
            ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('13', style: FonteApp.fontCalendarNumberDay,),
              Container(alignment: Alignment.center,height: 28, width: 28,decoration: BoxDecoration(color: ColorsApp.backgroundButton, shape: BoxShape.circle),child: Text('14', style: GoogleFonts.poppins(fontSize: 14,fontStyle: FontStyle.normal,color: ColorsApp.backgroundAgenda,fontWeight: FontWeight.w400,))),
              Text('15', style: FonteApp.fontCalendarNumberDay,),
              Text('16', style: FonteApp.fontCalendarNumberDay,),
              Text('17', style: FonteApp.fontCalendarNumberDay,),
              Text('18', style: FonteApp.fontCalendarNumberDay,),
              Text('19', style: FonteApp.fontCalendarNumberDay,),]
        ),


              SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('20', style: FonteApp.fontCalendarNumberDay,),
              Text('21', style: FonteApp.fontCalendarNumberDay,),
              Text('22', style: FonteApp.fontCalendarNumberDay,),
              Text('23', style: FonteApp.fontCalendarNumberDay,),
              Text('24', style: FonteApp.fontCalendarNumberDay,),
              Text('25', style: FonteApp.fontCalendarNumberDay,),
              Text('26', style: FonteApp.fontCalendarNumberDay,),
            ],

        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('27', style: FonteApp.fontCalendarNumberDay,),
              Text('28', style: FonteApp.fontCalendarNumberDay,),
              Text('29', style: FonteApp.fontCalendarNumberDay,),
              Text('30', style: FonteApp.fontCalendarNumberDay,),
              Text('31', style: FonteApp.fontCalendarNumberDay,),
              Text('1', style: FonteApp.fontCalendarNumberOutside,),
              Text('2', style: FonteApp.fontCalendarNumberOutside,),
            ],
        ),
            

      ],),
      
    );
  }
}