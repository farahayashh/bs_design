import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Change
{
  int coun = 0 ;

  setcoun(coun)
  {
    this.coun=coun;
  }
  int getcoun(){
    return coun;

  }

}
class Circ
{
  int count = 0 ;
  incr()
  {
    count =count+10;
  }
  zero()
  {
    count = 0;
  }
  int getcount(){
    return count;
  }
}