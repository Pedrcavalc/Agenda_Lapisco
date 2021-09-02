

import 'package:exemplo/agenda_widget/calendar_mock.dart';
import 'package:exemplo/assets/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Agenda extends StatefulWidget {
  const Agenda({ Key? key }) : super(key: key);

  @override
  _AgendaState createState() => _AgendaState();
}

class _AgendaState extends State<Agenda> {
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      backgroundColor: ColorsApp.backgroundScreen,
      body: 
      SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container( 
              height: 291,
              width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: ColorsApp.backgroundAgenda, 
            borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10),bottomRight: Radius.circular(10))),
              child:Column( children: [SizedBox(height: 48,),
              Row( 
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 9),
                        child:Text('Dezembro 2020',style: GoogleFonts.poppins(fontSize: 16,fontWeight:FontWeight.bold, fontStyle: FontStyle.normal, height: 2),)),
                        
                 ),
                  Container(child: Row(children: [
                    _buttonAction(action: (){print('back');

                    },child: Icon(Icons.arrow_back,color: ColorsApp.backgroundButton,),colorButton: ColorsApp.backgroundScreen),
                    SizedBox(width: 10,),
                    _buttonAction(action: (){print('foward');
                    
                    },child: Icon(Icons.arrow_forward, color: ColorsApp.backgroundScreen,),colorButton: ColorsApp.backgroundButton),
                    SizedBox(width: 10,)
                  ],),)      
              ],), 
              SizedBox(height: 23,),
          //  Calendar()
          Calendar_mock()
    

           ],  
              ),           
              ),
            SizedBox(height: 23,),
            Padding(padding: EdgeInsets.only(left: 9), child: Align(alignment: Alignment.topLeft,child: Text('10:30', style: GoogleFonts.poppins(fontSize: 14,fontWeight:FontWeight.w700, fontStyle: FontStyle.normal,color: ColorsApp.textBlack ),))),
            SizedBox(height: 3,),

            Padding(
              padding: const EdgeInsets.only(left: 9),
              child: Align(alignment: Alignment.centerLeft,
                child: Container(height: 40, width: MediaQuery.of(context).size.width * 0.90,decoration: BoxDecoration(color: ColorsApp.backgroundAgenda,borderRadius: BorderRadius.circular(7) ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                        //  Align(alignment: Alignment.center, child: Container(height: 30, width: 30, 
                        // decoration: BoxDecoration(image: DecorationImage( image: AssetImage('C:/Users/pedro/exemplo/lib/assets/Icone.jpg'),fit: BoxFit.fill) ,shape: BoxShape.circle),)),
                        Align(alignment: Alignment.center , child: Container(width: 20 , height: 20 ,child: CircleAvatar(backgroundImage: NetworkImage('https://github.com/Pedrcavalc/Exercicios-em-Python-openCV/blob/main/57504019_10213370150360595_8591532066431041536_n%201.jpg?raw=true'),))),
                        SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                       
                        Align(alignment: Alignment.center ,child: Text('Thiago da Motta Valente Lopes', 
                        style:GoogleFonts.poppins(fontSize: 14,fontWeight:FontWeight.w700, fontStyle: FontStyle.normal,color: ColorsApp.textBlack,height: 1.8 ) ,))
                      
                    ],
              
                ),
                ),
              ),
            ),
            SizedBox(height: 150,),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(height: 66,
                width: MediaQuery.of(context).size.width *0.95,
                child: ElevatedButton(onPressed: null, style: ElevatedButton.styleFrom(padding: EdgeInsets.zero, 
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(6))),
                child: Ink(decoration: BoxDecoration(color: ColorsApp.backgroundButton,borderRadius: BorderRadius.circular(6)),
                child: Container( alignment: Alignment.center, child:Container(height: 24,
                  child: Text('AGENDAR CONSULTA', style: GoogleFonts.poppins(fontSize: 18,
                  fontWeight: FontWeight.w700, fontStyle: FontStyle.normal, color: ColorsApp.backgroundAgenda,) ,),
                ),)),
                )),
              ),
              SizedBox(height: 13,) ,
          ],      
        ),
      ),
      ),
      


      bottomNavigationBar: Container(height: 53,
      decoration: BoxDecoration(color: ColorsApp.backgroundAgenda),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [IconButton(onPressed: null, icon:Icon(Icons.home)),Container(
      child: IconButton(onPressed: null, icon: Icon(Icons.person)),
      ),
      Container(child: IconButton(onPressed: null, icon: Icon(Icons.camera_alt)),),
      Container(child: IconButton(onPressed: null, icon: Icon(Icons.messenger)),),
      Container(child: IconButton(onPressed: null, icon: Icon(Icons.location_on)),),
      Container(child: IconButton(onPressed: null, icon: Icon(Icons.settings)),)
      ],),),

    );
  }
}


Widget _buttonAction({ action,  child, colorButton}) {
    return ClipOval(
      child: Material(
        color: colorButton, // Button color
        child: InkWell(
          splashColor: Colors.white, // Splash color
          onTap: action,
          child: SizedBox(width: 30, height: 30, child: child),
        ),
      ),
    );}