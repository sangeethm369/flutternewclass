import 'package:flutter/material.dart';

// class PickerDateTime extends StatefulWidget {
//   const PickerDateTime({super.key});

//   @override
//   State<PickerDateTime> createState() => _PickerDateTimeState();
// }

// class _PickerDateTimeState extends State<PickerDateTime> {
//   DateTime selectedDate=DateTime.now();

//   Future<void> _selectedDate(BuildContext context) async {
//     final DateTime? picked=await showDatePicker(
//       context: context,
//       initialDate: selectedDate,
//       firstDate: DateTime(2000),
//       lastDate: DateTime(2100)
//       );

//       if(picked!=null&&picked!=selectedDate){
//         setState(() {
//           selectedDate=picked;
//         });
//       }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: [
//             Text("Select Date"),
//             Text("${selectedDate.toLocal()}".split(' ')[0],style: TextStyle(color: Colors.green),),
//             IconButton(onPressed: ()=>_selectedDate(context), icon: Icon(Icons.calendar_today))
//           ],
//         ),
//       ),
//     );
//   }
// }




class PickerTimes extends StatefulWidget {
  const PickerTimes({super.key});

  @override
  State<PickerTimes> createState() => _PickerTimesState();
}

class _PickerTimesState extends State<PickerTimes> {
  TimeOfDay selectedTimes=TimeOfDay.now();

  Future<void> _selectedtimes(BuildContext context) async{
    final TimeOfDay? picked=await showTimePicker(
      context: context, 
      initialTime: selectedTimes
      );
       if(picked!=null&&picked!=selectedTimes){
        setState(() {
          selectedTimes=picked;
        });
      }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [

            const Text("Select a time"),

            Text(selectedTimes.format(context)),

            IconButton(onPressed: ()=>_selectedtimes(context), icon: const Icon(Icons.timer))
          ],
        ),
      ),
    );
  }
}