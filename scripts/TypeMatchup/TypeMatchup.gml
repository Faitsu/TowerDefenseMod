// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function TypeMatchup(_targType){ //checks if bullet type is super effective against enemy
	if(bType == objType.FIRE && _targType == objType.GRASS){
		return true;
	}
	else if(bType == objType.WATER && _targType == objType.FIRE){
		return true;
	}
	else if(bType == objType.GRASS && _targType == objType.WATER){
		return true;
	}
	else{
		return false;
	}
}