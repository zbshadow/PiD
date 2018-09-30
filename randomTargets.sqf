/*
Lower Targets script
Author: zbshadow
Last Updated: 9/26/2018
Purpose: Randomly Raise 
*/
_currentShootHouse = _this select 0;
if (_currentShootHouse in sController ) then {
	_targets = sTargets;
	_numTargets = count _targets;
	if (count _targets < 0) then 
		{
			hint "no targets"; //debug to chat if there are no targets.
		};
	//randomly select number of targets
	_cMin = round (_numTargets * 0.3);
	_cMed = round (_numTargets/2);
	_cMax = round (_numTargets * 0.7);
	_raiseN = round (random[_cMin,_cMed,_cMax]);
	
	//selecting random targets from targets available
	_newTargets = [];
	for [{_i=0}, {_i<_raiseN}, {_i=_i+1}] do 
	{
		_newTargets pushBack (selectRandom _targets);
	};
	
	
	//raise the targets selected
	{
		_x setVariable ["nopop",true,true];
		_x animateSource ["Terc",0]; //targets come up
	}forEach _newTargets; //sets all targets up
	
} else {
	_targets = sTargets2;
	_numTargets = count _targets;
	if (count _targets < 0) then 
		{
			hint "no targets"; //debug to chat if there are no targets.
		};
	//randomly select number of targets
	_cMin = round (_numTargets * 0.3);
	_cMed = round (_numTargets/2);
	_cMax = round (_numTargets * 0.7);
	_raiseN = round (random[_cMin,_cMed,_cMax]);

	
	//selecting random targets from targets available
	_newTargets = [];
	for [{_i=0}, {_i<_raiseN}, {_i=_i+1}] do 
	{
		_newTargets pushBack (selectRandom _targets);
	};
	
	
	//raise the targets selected
	{
		_x setVariable ["nopop",true,true];
		_x animateSource ["Terc",0]; //targets come up
	}forEach _newTargets; //sets all targets up
};