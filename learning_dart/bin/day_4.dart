void main() {
  print(getDay(1));
}

String getDay(int day) {
  return switch (day) {
    1 => "Monday",
    2 => "Tuesday",
    3 => "Wednesday",
    4 => "Thursday",
    5 => "Friday",
    6 => "Saturday",
    7 => "Sunday",
    _ => "Invalid day",
  };
}

// String getDay(int day) {
//   switch(day){
//     case 1:
//       return "Monday";
//     case 2:
//       return "Tuesday";
//     case 3:
//       return "Wednesday";
//     case 4:
//       return "Thursday";
//     case 5:
//       return "Friday";
//     case 6:
//       return "Saturday";
//     case 7:
//       return "Sunday";
//     default:
//       return "Invalid day";
//   }  
// }
