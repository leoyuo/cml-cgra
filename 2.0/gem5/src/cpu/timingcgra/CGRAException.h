/*
 * CGRAException.h
 *
 *  Created on: May 24, 2011
 *      Author: mahdi
 */

#ifndef CGRAEXCEPTION_H_
#define CGRAEXCEPTION_H_

#include <exception>
#include <string>
#include <iostream>
#include <stdio.h>
using namespace std;
class CGRAException:public std::exception {
public:
	CGRAException(string message);

};

#endif /* CGRAEXCEPTION_H_ */
