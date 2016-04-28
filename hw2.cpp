/*
 * hw2.cpp
 *
 *  Created on: 4/22, 2016
 *      Author: u100061230 Yi-Chin Wong
 *      title : hw2.cpp
 */



#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <iostream>

using namespace std;

double SqrtNumber(double num);
double test(double x, double g, double up, double low);
bool closeEnough(double a, double x);
double betterGuess(double x, double g);

int main(void){
	double num;
	cout << "please enter the number you want to find the sqrt root . " << endl;
	cin  >> num ;
	cout << "the sqrt root is " << SqrtNumber(num) << endl;


                                 return 0;
}
double SqrtNumber(double num)			//ex:  SqrtNumber(3)
{
    return test(num, 0, num, 0);
}
// double test(double x, double g, double go) {		//ex: test(3, 1)
//    if (closeEnough(x, g*g))
//       return g;
//    else
//    		if ((x - g*g) >= 0 )
//       		return test(x, betterGuess(x, g), g);
// 		else
// 			return test(x, betterGuess(go, g), go);
// }

double test(double x, double g, double up, double low) {		//ex: test(3, 1)
   if (closeEnough(x, g*g))
      return g;
   else
   		if ((x - g*g) >= 0 )
      		return test(x, betterGuess(up, g), up, g);
		else
			return test(x, betterGuess(low, g), g, low);
}




bool closeEnough(double a, double x) {	//ex: closeEnough(3/1, 1)

	return (fabs(a - x) < 0.001);		//  the fabs function returns the absolute value of a floating-point number

}										// this function is used as limitation of digits after the decimal-point

double betterGuess(double x, double g) { //ex: betterGuess(3, 1)

   return ((x + g) / 2);

}
