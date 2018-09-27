/*
Lower Targets script
Author: zbshadow
Last Updated: 9/26/2018
Purpose: Lower the targets for the PiD shoot house script system
*/
systemChat "lower script called";
_currentShootHouse = _this select 0;
systemChat format ["Controller %1", _currentShootHouse];

if (_currentShootHouse in sController ) then {
	_targets = sTargets;
	_numTargets = count _targets;
	systemChat format ["Number of Targets %1", _numTargets];
	if (count _targets < 0) then 
		{
			hint "no targets"; //debug to chat if there are no targets.
		};

	{_x animate ["Terc",1];}forEach _targets; //sets all targets up
	systemChat "All targets lowered." //debug to chat.
} else {
	_targets = sTargets2;
	_numTargets = count _targets;
	systemChat format ["Number of Targets %1", _numTargets];
	if (count _targets < 0) then 
	{
		hint "no targets"; //debug to chat if there are no targets.
	};

	{_x animate ["Terc",1];}forEach _targets; //sets all targets up
	systemChat "All targets lowered." //debug to chat.
};