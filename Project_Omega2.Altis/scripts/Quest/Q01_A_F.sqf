["TaskAssignedQ01"] call BIS_fnc_showNotification;
_Marker1_Pos = createMarker ["QMarker01a", position ref01]; _Marker_Pos setMarkerShape "ICON";  
_Marker1_Pos setMarkerType "mil_marker";  
_Marker1_Pos setMarkerColor "ColorUNKNOWN";  
_Marker1_Pos setMarkerText "Objetivo: LLeva el cargamento al mundo designado en el mapa";  
_Marker1_Pos setMarkerSize [1,1];  

[0, 6, false, true ] call BIS_fnc_cinemaBorder;
playSound "in1";
playSound "fuz0";
IHQ sideChat "Entonces tu eres el sujeto que esta dispuesto a hacer el envio?";
sleep 5;
playSound "out1";
sleep 2;

playSound "in2";
playSound "fuz0";
["Cap. Aaron L. Collins","Ese soy yo"] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;

playSound "in1";
playSound "fuz0";
IHQ sideChat "Entonces no se diga mas veras la ubicacion de la entrega en tu mapa, cuando la mercancia este el punto designado se te dara la paga";
sleep 5;
playSound "out1";
sleep 2;

playSound "in2";
playSound "fuz0";
["Cap. Aaron L. Collins","Enterado"] spawn BIS_fnc_showSubtitle;
sleep 5;
playSound "out1";
sleep 2;
[1, 6, false, true ] call BIS_fnc_cinemaBorder;
[["Quest01Recomendation", "CancelQuest01"], 15,"",35,"",true,true,false,true] call BIS_fnc_advHint;
{
	tuck01 addWeaponCargo [_x,10];
} forEach ["srifle_EBR_F","srifle_LRR_F","arifle_Mk20_F","SMG_01_Holo_F"];
player addEventHandler ["Take", {
   _unit = _this select 0;
   _item = _this select 2;
   if(_item == "srifle_EBR_F" || _item == "srifle_LRR_F" || _item == "arifle_Mk20_F" || _item == "SMG_01_Holo_F") then {
       //_unit removeItem "srifle_EBR_F";
	   _unit removeWeapon _item;
	   //_unit removeWeapon "srifle_LRR_F";
		//hint "Atencion: Si intentas robar el arma de nuevo la mision terminara"
		["TaskCanceled01"] call BIS_fnc_showNotification;
	};
}];