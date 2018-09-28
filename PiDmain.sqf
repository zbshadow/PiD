/*
Pid main
Author: zbshadow
Last Updated: 9/26/2018
Purpose: Main script of PiD shoot house script set
*/

//execute only on server
if(isServer) then {

	//sTargets = [t1,t2,t3,t4]; //fill the array with all your targets
	_targets = sTargets + sTargets2;
	_controler = sController + sController2;
	
	{_x animate ["Terc",1];}forEach _targets; //sets all targets down at start
	
	//_controler = c1; //place the variable name for the object used to control shouthouse
	{
		_x addAction ["Raise Targets","PiD\raiseTargets.sqf", nil, 1.5, true, false];
		_x addAction ["Lower Targets","PiD\lowerTargets.sqf", nil, 1.5, true, false];
		_x addAction ["Random Targets","PiD\randomTargets.sqf", nil, 1.5, true, false];
	} forEach _controler;
};

