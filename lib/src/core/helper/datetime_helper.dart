class DateTimeHelper{
static String getFormattedDate(DateTime compareDateTime){
  if(DateTime.now().difference(compareDateTime).inDays<1){
    return '${compareDateTime.hour} : ${compareDateTime.minute}';

  }else if(DateTime.now().difference(compareDateTime).inDays == 1){
    return 'Yestarday';
  }else{
    return compareDateTime.toString().substring(0,10);
  }
}
static String getFormattedTime(DateTime compareDateTime){
  if(DateTime.now().difference(compareDateTime).inDays<1){
    return '${compareDateTime.hour} : ${compareDateTime.minute}';

  }else if(DateTime.now().difference(compareDateTime).inDays == 1){
    return 'Yestarday,${compareDateTime.minute}';
  }else{
    return compareDateTime.toString().substring(0,10);
  }
}

}