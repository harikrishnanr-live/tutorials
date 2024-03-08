<?php
  $filename = 'data.json';
  $data = file_get_contents($filename); //data read from json file
  // print_r($data);
  $users = json_decode($data); 
  echo "<pre>";
  // print_r($users->data);
  $main =[];
  foreach ($users->data as $key => $value) {
    $oman_ary[$value->attribute][$value->attribute_type] = [];
    $expatriates_ary[$value->attribute][$value->attribute_type] = [];
    $total_headcount = $man_hours = $payroll = 0;
    if(($value->attribute == 'Overall')&&($value->attribute_type == 'Omanis'))
    {
      $l[$value->attribute][$value->attribute_type][$value->id]['attribute_key'] = $value->attribute_key;
      $l[$value->attribute][$value->attribute_type][$value->id]['attribute_value'] = $value->attribute_value;
      if($value->attribute_key == "Headcount"){
        $total_headcount += $value->attribute_value;
        $l[$value->attribute]['total']['total'] = $total_headcount;
      }
      if($value->attribute_key == "Man-hours"){
        $man_hours += $value->attribute_value;
        $l[$value->attribute]['total']['man_hours'] = $man_hours;
      }
      if($value->attribute_key == "Payroll"){
        $payroll += $value->attribute_value;
        $l[$value->attribute]['total']['payroll'] = $payroll;
      }
      $oman_ary= $l;
    }
    if(($value->attribute === 'Overall')&&($value->attribute_type === 'Expatriates')){
    //   // print_r($value->attribute_type);
    //   // exit();
    //   print_r("expression----");
      $m[$value->attribute][$value->attribute_type][$value->id]['attribute_key'] = $value->attribute_key;
      $m[$value->attribute][$value->attribute_type][$value->id]['attribute_value'] = $value->attribute_value;
      $oman_ary= $m;
    }
  }
  // print_r($oman_ary);
  print_r($users);
?>