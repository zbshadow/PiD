/*
Raise Targets script
Author: zbshadow
Last Updated: 9/26/2018
Purpose: Raise the targets for the PiD shoot house script system
*/
_currentShootHouse = _this select 0;

if (_currentShootHouse in sController ) then {
	_targets = sTargets;
	_numTargets = count _targets;
	if (count _targets < 0) then 
	{
		hint "no targets"; //debug to chat if there are no targets.
	};

	{
		_x setVariable ["nopop",true,true];
		_x animateSource ["Terc",0]; //targets come up
	}forEach _targets; //sets all targets up
} else {
	_targets = sTargets2;
	_numTargets = count _targets;
	systemChat format ["Number of Targets %1", _numTargets];
	if (count _targets < 0) then 
	{
		hint "no targets"; //debug to chat if there are no targets.
	};

	{
		_x setVariable ["nopop",true,true];
		_x animateSource ["Terc",0]; //targets come up
	}forEach _targets; //sets all targets up
};
