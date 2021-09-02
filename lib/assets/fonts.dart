import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

class FonteApp{

static final fontCalendarWeek = GoogleFonts.poppins(fontSize: 14,fontStyle: FontStyle.normal,color: ColorsApp.daysWeekColor.withOpacity(0.5),fontWeight: FontWeight.w400);
static final fontCalendarNumberDay =  GoogleFonts.poppins(fontSize: 14,fontStyle: FontStyle.normal,color: ColorsApp.textBlack,fontWeight: FontWeight.w400,);
static final fontCalendarNumberOutside = GoogleFonts.poppins(fontSize: 14,fontStyle: FontStyle.normal,color: ColorsApp.textBlack.withOpacity(0.3),fontWeight: FontWeight.w400,);

}