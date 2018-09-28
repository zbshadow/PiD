systemChat "Random Targets Raised";
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
	//randomly select number of targets
	_cMin = round (_numTargets * 0.3);
	systemChat format ["Min %1", _cMin];
	_cMed = round (_numTargets/2);
	systemChat format ["Med %1",_cMed];
	_cMax = round (_numTargets * 0.7);
	systemChat format ["Max %1", _cMax];
	_raiseN = round (random[_cMin,_cMed,_cMax]);
	systemChat format["Number to raise %1", _raiseN];
	systemChat "we made it here";//debug
	
	//selecting random targets from targets available
	_newTargets = [];
	for [{_i=0}, {_i<_raiseN}, {_i=_i+1}] do 
	{
		_newTargets pushBack (selectRandom _targets);
		systemChat format ["newTargets = %1", _newTargets];
	};
	
	systemChat format ["After the loop %1", _newTargets];  //debug
	
	//raise the targets selected
		{
		_x animate ["Terc",0]; //targets come up
		_x addEventHandler ["HIT", { //adding eventhandler to make targets stay down
		(_this select 0) animate ["Terc",1]; //sets target down
		(_this select 0) RemoveEventHandler ["HIT",0]; //remove the event handler for HIT
		}];
	}forEach _newTargets; //sets all targets up
	
} else {
	_targets = sTargets2;
	_numTargets = count _targets;
	systemChat format ["Number of Targets %1", _numTargets];
	if (count _targets < 0) then 
		{
			hint "no targets"; //debug to chat if there are no targets.
		};
	//randomly select number of targets
	_cMin = round (_numTargets * 0.3);
	systemChat format ["Min %1", _cMin];
	_cMed = round (_numTargets/2);
	systemChat format ["Med %1",_cMed];
	_cMax = round (_numTargets * 0.7);
	systemChat format ["Max %1", _cMax];
	_raiseN = round (random[_cMin,_cMed,_cMax]);
	systemChat format["Number to raise %1", _raiseN];
	systemChat "we made it here";//debug
	
	//selecting random targets from targets available
	_newTargets = [];
	for [{_i=0}, {_i<_raiseN}, {_i=_i+1}] do 
	{
		_newTargets pushBack (selectRandom _targets);
		systemChat format ["newTargets = %1", _newTargets];
	};
	
	systemChat format ["After the loop %1", _newTargets];  //debug
	
	//raise the targets selected
		{
		_x animate ["Terc",0]; //targets come up
		_x addEventHandler ["HIT", { //adding eventhandler to make targets stay down
		(_this select 0) animate ["Terc",1]; //sets target down
		(_this select 0) RemoveEventHandler ["HIT",0]; //remove the event handler for HIT
		}];
	}forEach _newTargets; //sets all targets up
};