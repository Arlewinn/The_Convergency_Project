// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spd_sort(list){
	//sort enemies by speed
	var listSize = ds_list_size(list);
	for (var i = 0; i < listSize-1; i++){
		for (var j = 0; j < listSize-1-i; j++){
			if(list[|j].current[@ SPD] < list[|j+1].current[@ SPD]){
				var temp = list[|j];
				list[|j] = list[|j+1];
				list[|j+1] = temp;
			}
		}
	}
}