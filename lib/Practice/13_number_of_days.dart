void main(){
  var initialDate = new DateTime.utc(2014,07,02);
  var finalDate = new DateTime.utc(2014,07,11);
  var difference  = finalDate.difference(initialDate);
  print(difference.inDays);
}