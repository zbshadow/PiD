/*
PiD Config
Author: zbshadow
Last Updated: 9/26/2018
Purpose: Setup all objects in game to work with PiD shout house script system
*/

//Add this line to the init.sqf
//execVM "PiD\config.sqf";

//shoothouse 1
sController = [c1,c2]; //put the variable name of every object you want to control the shoothouse
sTargets = [t1,t2,t3,t4]; // place each shouthouse targets variable names here

//shouthouse 2
sController2 = [c3,c4];
sTargets2 = [t21,t22,t23,t24,t25,t26,t27,t28,t29,t210,t211,t212,t213,t214,t215,t216,t217,t218,t219,t220,t221,t222,t223,t224,t225,t226,t227,t228];

execVM "PiD\PiDmain.sqf";