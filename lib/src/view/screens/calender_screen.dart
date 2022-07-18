import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:letsgo/widgets/texts/heading_text.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';
import '../../../constants/constant.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {


  final dateformate = DateFormat('dd-MM-yyyy');

  late String? startDate='';
  late String? endDate='';
  late String? startDateOnly='';
  late String? endDateOnly='';
  late String? startMonth='';
  late String? endMonth='';

  DateRangePickerController dateRangePickerController = DateRangePickerController();

  void onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      startDate =dateformate.format(args.value.startDate).toString();
      startMonth=DateFormat('MMMM').format(args.value.startDate).toString();
      startDateOnly=DateFormat('dd').format(args.value.startDate).toString();

      endDate =dateformate.format(args.value.endDate ?? args.value.startDate).toString();
      endDateOnly=DateFormat('dd').format(args.value.endDate).toString();
      endMonth=DateFormat('MMMM').format(args.value.endDate).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:10,top: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);

                    },
                    child: const Icon(Icons.close,color: Colors.black38,),
                  ),
                  GestureDetector(
                      onTap: (){
                        setState(() {
                          startMonth="";
                          startDateOnly="";
                          endMonth="";
                          endDateOnly="";
                          startDate="";
                          endDate="";
                        });

                      },
                      child: const Text("Clear",style: TextStyle(color: kColor,fontSize: 15),)),
                ],),
              ),
               startDate!.isEmpty && endDate!.isEmpty && startDateOnly!.isEmpty &&endDateOnly!.isEmpty?
               const Padding(
                 padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                 child: Heading(text:"From - To"),
               ):
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                 child: Heading(text:"$startMonth $startDateOnly - $endMonth $endDateOnly"),
               ),
              SizedBox(
                width: size.width,
                height: size.height*0.7,
                child: SfDateRangePicker(
                  backgroundColor: Colors.white.withOpacity(0.8),
                  todayHighlightColor: kColor,
                  selectionMode: DateRangePickerSelectionMode.range,
                  startRangeSelectionColor: kColor,
                  endRangeSelectionColor:  kColor,
                  viewSpacing: 20,
                  controller: dateRangePickerController,
                  navigationDirection: DateRangePickerNavigationDirection.vertical,
                  onSelectionChanged: onSelectionChanged,
                  rangeSelectionColor: kColor.withOpacity(0.2),
                  enablePastDates: false,
                  enableMultiView: true,
                  toggleDaySelection: true,
                  headerStyle: const DateRangePickerHeaderStyle(
                      backgroundColor: kColor,
                      textAlign: TextAlign.left,
                      textStyle: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
                        letterSpacing: 2,
                        color: Colors.white,
                      )),
                  monthViewSettings: const DateRangePickerMonthViewSettings(
                      viewHeaderStyle: DateRangePickerViewHeaderStyle(
                          backgroundColor: Colors.white,
                          textStyle: TextStyle(fontSize: 14, color: Colors.black))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
